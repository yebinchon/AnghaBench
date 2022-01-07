
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct read_fd_data {int fd; } ;
struct archive {int dummy; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ ARCHIVE_FAILED ;
 scalar_t__ ARCHIVE_FATAL ;
 scalar_t__ ESPIPE ;
 int archive_set_error (struct archive*,scalar_t__,char*,int ) ;
 scalar_t__ errno ;
 scalar_t__ lseek (int ,scalar_t__,int) ;

__attribute__((used)) static int64_t
file_seek(struct archive *a, void *client_data, int64_t request, int whence)
{
 struct read_fd_data *mine = (struct read_fd_data *)client_data;
 int64_t r;



 r = lseek(mine->fd, request, whence);
 if (r >= 0)
  return r;

 if (errno == ESPIPE) {
  archive_set_error(a, errno,
      "A file descriptor(%d) is not seekable(PIPE)", mine->fd);
  return (ARCHIVE_FAILED);
 } else {

  archive_set_error(a, errno,
      "Error seeking in a file descriptor(%d)", mine->fd);
  return (ARCHIVE_FATAL);
 }
}
