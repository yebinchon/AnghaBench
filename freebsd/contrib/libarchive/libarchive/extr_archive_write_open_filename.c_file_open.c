
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
struct write_file_data {scalar_t__ fd; int filename; } ;
struct stat {int st_ino; int st_dev; int st_mode; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 scalar_t__ ENOMEM ;
 int O_BINARY ;
 int O_CLOEXEC ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISFIFO (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int __archive_ensure_cloexec_flag (scalar_t__) ;
 char* __la_win_permissive_name_w (char const*) ;
 void* _wopen (char const*,int,int) ;
 scalar_t__ archive_mstring_get_mbs (struct archive*,int *,char const**) ;
 scalar_t__ archive_mstring_get_wcs (struct archive*,int *,char const**) ;
 int archive_set_error (struct archive*,scalar_t__,char*,...) ;
 scalar_t__ archive_write_get_bytes_in_last_block (struct archive*) ;
 int archive_write_set_bytes_in_last_block (struct archive*,int) ;
 int archive_write_set_skip_file (struct archive*,int ,int ) ;
 scalar_t__ errno ;
 int free (char*) ;
 scalar_t__ fstat (scalar_t__,struct stat*) ;
 scalar_t__ open (char const*,int,int) ;

__attribute__((used)) static int
file_open(struct archive *a, void *client_data)
{
 int flags;
 struct write_file_data *mine;
 struct stat st;



 const wchar_t *wcs;
 const char *mbs;

 mine = (struct write_file_data *)client_data;
 flags = O_WRONLY | O_CREAT | O_TRUNC | O_BINARY | O_CLOEXEC;




 mbs = ((void*)0); wcs = ((void*)0);
 if (archive_mstring_get_mbs(a, &mine->filename, &mbs) != 0) {
  if (errno == ENOMEM)
   archive_set_error(a, errno, "No memory");
  else {
   archive_mstring_get_wcs(a, &mine->filename, &wcs);
   archive_set_error(a, errno,
       "Can't convert '%S' to MBS", wcs);
  }
  return (ARCHIVE_FATAL);
 }
 mine->fd = open(mbs, flags, 0666);
 __archive_ensure_cloexec_flag(mine->fd);

 if (mine->fd < 0) {
  if (mbs != ((void*)0))
   archive_set_error(a, errno, "Failed to open '%s'", mbs);
  else
   archive_set_error(a, errno, "Failed to open '%S'", wcs);
  return (ARCHIVE_FATAL);
 }

 if (fstat(mine->fd, &st) != 0) {
  if (mbs != ((void*)0))
   archive_set_error(a, errno, "Couldn't stat '%s'", mbs);
  else
   archive_set_error(a, errno, "Couldn't stat '%S'", wcs);
  return (ARCHIVE_FATAL);
 }




 if (archive_write_get_bytes_in_last_block(a) < 0) {
  if (S_ISCHR(st.st_mode) || S_ISBLK(st.st_mode) ||
      S_ISFIFO(st.st_mode))

   archive_write_set_bytes_in_last_block(a, 0);
  else

   archive_write_set_bytes_in_last_block(a, 1);
 }






 if (S_ISREG(st.st_mode))
  archive_write_set_skip_file(a, st.st_dev, st.st_ino);

 return (ARCHIVE_OK);
}
