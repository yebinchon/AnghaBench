
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_fd_data {int fd; } ;
struct stat {int st_mode; int st_ino; int st_dev; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISFIFO (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int archive_set_error (struct archive*,int ,char*,int) ;
 scalar_t__ archive_write_get_bytes_in_last_block (struct archive*) ;
 int archive_write_set_bytes_in_last_block (struct archive*,int) ;
 int archive_write_set_skip_file (struct archive*,int ,int ) ;
 int errno ;
 scalar_t__ fstat (int,struct stat*) ;

__attribute__((used)) static int
file_open(struct archive *a, void *client_data)
{
 struct write_fd_data *mine;
 struct stat st;

 mine = (struct write_fd_data *)client_data;

 if (fstat(mine->fd, &st) != 0) {
  archive_set_error(a, errno, "Couldn't stat fd %d", mine->fd);
  return (ARCHIVE_FATAL);
 }




 if (S_ISREG(st.st_mode))
  archive_write_set_skip_file(a, st.st_dev, st.st_ino);





 if (archive_write_get_bytes_in_last_block(a) < 0) {



  if (S_ISCHR(st.st_mode) || S_ISBLK(st.st_mode) ||
      S_ISFIFO(st.st_mode) || (mine->fd == 1))

   archive_write_set_bytes_in_last_block(a, 0);
  else
   archive_write_set_bytes_in_last_block(a, 1);
 }

 return (ARCHIVE_OK);
}
