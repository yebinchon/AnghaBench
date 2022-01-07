
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_fd_data {int fd; } ;
struct archive {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EINTR ;
 int archive_set_error (struct archive*,scalar_t__,char*) ;
 scalar_t__ errno ;
 scalar_t__ write (int ,void const*,size_t) ;

__attribute__((used)) static ssize_t
file_write(struct archive *a, void *client_data, const void *buff, size_t length)
{
 struct write_fd_data *mine;
 ssize_t bytesWritten;

 mine = (struct write_fd_data *)client_data;
 for (;;) {
  bytesWritten = write(mine->fd, buff, length);
  if (bytesWritten <= 0) {
   if (errno == EINTR)
    continue;
   archive_set_error(a, errno, "Write error");
   return (-1);
  }
  return (bytesWritten);
 }
}
