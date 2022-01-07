
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct fixup_entry {int mode; int fixup; } ;
struct archive_write_disk {int flags; int user_umask; int archive; } ;
typedef int mode_t ;


 int ARCHIVE_EXTRACT_NO_OVERWRITE ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int DEFAULT_DIR_MODE ;
 scalar_t__ EEXIST ;
 scalar_t__ ENOENT ;
 scalar_t__ ENOTDIR ;
 int MAXIMUM_DIR_MODE ;
 int MINIMUM_DIR_MODE ;
 scalar_t__ S_ISDIR (int ) ;
 int TODO_MODE_BASE ;
 int archive_set_error (int *,scalar_t__,char*,char*) ;
 scalar_t__ errno ;
 scalar_t__ la_stat (char*,struct stat*) ;
 scalar_t__ mkdir (char*,int) ;
 struct fixup_entry* new_fixup (struct archive_write_disk*,char*) ;
 char* strrchr (char*,char) ;
 scalar_t__ unlink (char*) ;

__attribute__((used)) static int
create_dir(struct archive_write_disk *a, char *path)
{
 struct stat st;
 struct fixup_entry *le;
 char *slash, *base;
 mode_t mode_final, mode;
 int r;


 slash = strrchr(path, '/');
 if (slash == ((void*)0))
  base = path;
 else
  base = slash + 1;

 if (base[0] == '\0' ||
     (base[0] == '.' && base[1] == '\0') ||
     (base[0] == '.' && base[1] == '.' && base[2] == '\0')) {

  if (slash != ((void*)0)) {
   *slash = '\0';
   r = create_dir(a, path);
   *slash = '/';
   return (r);
  }
  return (ARCHIVE_OK);
 }






 if (la_stat(path, &st) == 0) {
  if (S_ISDIR(st.st_mode))
   return (ARCHIVE_OK);
  if ((a->flags & ARCHIVE_EXTRACT_NO_OVERWRITE)) {
   archive_set_error(&a->archive, EEXIST,
       "Can't create directory '%s'", path);
   return (ARCHIVE_FAILED);
  }
  if (unlink(path) != 0) {
   archive_set_error(&a->archive, errno,
       "Can't create directory '%s': "
       "Conflicting file cannot be removed",
       path);
   return (ARCHIVE_FAILED);
  }
 } else if (errno != ENOENT && errno != ENOTDIR) {

  archive_set_error(&a->archive, errno,
      "Can't test directory '%s'", path);
  return (ARCHIVE_FAILED);
 } else if (slash != ((void*)0)) {
  *slash = '\0';
  r = create_dir(a, path);
  *slash = '/';
  if (r != ARCHIVE_OK)
   return (r);
 }
 mode_final = DEFAULT_DIR_MODE & ~a->user_umask;

 mode = mode_final;
 mode |= MINIMUM_DIR_MODE;
 mode &= MAXIMUM_DIR_MODE;
 if (mkdir(path, mode) == 0) {
  if (mode != mode_final) {
   le = new_fixup(a, path);
   if (le == ((void*)0))
    return (ARCHIVE_FATAL);
   le->fixup |=TODO_MODE_BASE;
   le->mode = mode_final;
  }
  return (ARCHIVE_OK);
 }







 if (la_stat(path, &st) == 0 && S_ISDIR(st.st_mode))
  return (ARCHIVE_OK);

 archive_set_error(&a->archive, errno, "Failed to create dir '%s'",
     path);
 return (ARCHIVE_FAILED);
}
