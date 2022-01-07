
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trail {scalar_t__ tr_magic; char* tr_filename; int tr_filefd; int tr_dirname; int tr_dirfp; } ;
struct stat {scalar_t__ st_size; int st_mode; } ;
typedef scalar_t__ off_t ;
typedef int intmax_t ;


 scalar_t__ ENOENT ;
 int LOG_ERR ;
 int LOG_WARNING ;
 int O_RDONLY ;
 int PJDLOG_ASSERT (int) ;
 int PJDLOG_VERIFY (int) ;
 int SEEK_SET ;
 int S_ISREG (int ) ;
 scalar_t__ TRAIL_MAGIC ;
 int close (int) ;
 int dirfd (int ) ;
 scalar_t__ errno ;
 int fstat (int,struct stat*) ;
 int lseek (int,scalar_t__,int ) ;
 int openat (int,char*,int ) ;
 int pjdlog_debug (int,char*,int ,char const*,...) ;
 int pjdlog_errno (int ,char*,int ,char const*,...) ;
 int pjdlog_warning (char*,int ,char const*) ;
 int strlcpy (char*,char const*,int) ;
 scalar_t__ trail_find (struct trail*) ;
 int trail_is_crash_recovery (char const*) ;
 scalar_t__ trail_is_not_terminated (char const*) ;
 int trail_next (struct trail*) ;
 int unlinkat (int,char const*,int ) ;

void
trail_start(struct trail *trail, const char *filename, off_t offset)
{
 struct stat sb;
 int dfd, fd;

 PJDLOG_ASSERT(trail->tr_magic == TRAIL_MAGIC);

 PJDLOG_VERIFY(strlcpy(trail->tr_filename, filename,
     sizeof(trail->tr_filename)) < sizeof(trail->tr_filename));
 trail->tr_filefd = -1;

 if (trail->tr_filename[0] == '\0') {
  PJDLOG_ASSERT(offset == 0);
  trail_next(trail);
  return;
 }

 dfd = dirfd(trail->tr_dirfp);
 PJDLOG_ASSERT(dfd >= 0);
again:
 fd = openat(dfd, trail->tr_filename, O_RDONLY);
 if (fd == -1) {
  if (errno == ENOENT &&
      trail_is_not_terminated(trail->tr_filename) &&
      trail_find(trail)) {

   pjdlog_debug(1,
      "Trail file was renamed since last connection to \"%s/%s\".",
      trail->tr_dirname, trail->tr_filename);
   goto again;
  } else if (errno == ENOENT) {

   pjdlog_debug(1, "File \"%s/%s\" doesn't exist.",
       trail->tr_dirname, trail->tr_filename);
  } else {
   pjdlog_errno(LOG_ERR,
       "Unable to open file \"%s/%s\", skipping",
       trail->tr_dirname, trail->tr_filename);
  }
  trail_next(trail);
  return;
 }
 if (fstat(fd, &sb) == -1) {
  pjdlog_errno(LOG_ERR,
      "Unable to stat file \"%s/%s\", skipping",
      trail->tr_dirname, trail->tr_filename);
  close(fd);
  trail_next(trail);
  return;
 }
 if (!S_ISREG(sb.st_mode)) {
  pjdlog_warning("File \"%s/%s\" is not a regular file, skipping.",
      trail->tr_dirname, trail->tr_filename);
  close(fd);
  trail_next(trail);
  return;
 }
 if (offset < sb.st_size ||
     (offset >= sb.st_size &&
      trail_is_not_terminated(trail->tr_filename)) ||
     (offset >= sb.st_size && trail_is_not_terminated(filename) &&
      !trail_is_not_terminated(trail->tr_filename))) {

  if (lseek(fd, offset, SEEK_SET) == -1) {
   pjdlog_errno(LOG_ERR,
       "Unable to move to offset %jd within file \"%s/%s\", skipping",
       (intmax_t)offset, trail->tr_dirname,
       trail->tr_filename);
   close(fd);
   trail_next(trail);
   return;
  }
  if (!trail_is_crash_recovery(trail->tr_filename)) {
   pjdlog_debug(1,
       "Restarting file \"%s/%s\" at offset %jd.",
       trail->tr_dirname, trail->tr_filename,
       (intmax_t)offset);
  }
  trail->tr_filefd = fd;
  return;
 }
 close(fd);
 if (offset > sb.st_size) {
  pjdlog_warning("File \"%s/%s\" shrinked, removing it.",
      trail->tr_dirname, trail->tr_filename);
 } else {
  pjdlog_debug(1, "File \"%s/%s\" is already sent, removing it.",
      trail->tr_dirname, trail->tr_filename);
 }

 if (unlinkat(dfd, trail->tr_filename, 0) == -1) {
  pjdlog_errno(LOG_WARNING, "Unable to remove file \"%s/%s\"",
      trail->tr_dirname, trail->tr_filename);
 }
 trail_next(trail);
}
