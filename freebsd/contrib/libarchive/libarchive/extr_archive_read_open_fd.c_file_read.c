
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct read_fd_data {void* buffer; int fd; int block_size; } ;
struct archive {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EINTR ;
 int archive_set_error (struct archive*,scalar_t__,char*,int ) ;
 scalar_t__ errno ;
 scalar_t__ read (int ,void*,int ) ;

__attribute__((used)) static ssize_t
file_read(struct archive *a, void *client_data, const void **buff)
{
 struct read_fd_data *mine = (struct read_fd_data *)client_data;
 ssize_t bytes_read;

 *buff = mine->buffer;
 for (;;) {
  bytes_read = read(mine->fd, mine->buffer, mine->block_size);
  if (bytes_read < 0) {
   if (errno == EINTR)
    continue;
   archive_set_error(a, errno, "Error reading fd %d",
       mine->fd);
  }
  return (bytes_read);
 }
}
