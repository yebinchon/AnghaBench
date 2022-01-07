
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct read_fd_data {int block_size; scalar_t__ use_lseek; int fd; } ;
struct archive {int dummy; } ;
typedef int skip ;
typedef int request ;
typedef int int64_t ;


 scalar_t__ ESPIPE ;
 int SEEK_CUR ;
 int archive_set_error (struct archive*,scalar_t__,char*) ;
 scalar_t__ errno ;
 int lseek (int ,int,int ) ;

__attribute__((used)) static int64_t
file_skip(struct archive *a, void *client_data, int64_t request)
{
 struct read_fd_data *mine = (struct read_fd_data *)client_data;
 int64_t skip = request;
 int64_t old_offset, new_offset;
 int skip_bits = sizeof(skip) * 8 - 1;

 if (!mine->use_lseek)
  return (0);


 if (sizeof(request) > sizeof(skip)) {
  int64_t max_skip =
      (((int64_t)1 << (skip_bits - 1)) - 1) * 2 + 1;
  if (request > max_skip)
   skip = max_skip;
 }


 request = (request / mine->block_size) * mine->block_size;
 if (request == 0)
  return (0);

 if (((old_offset = lseek(mine->fd, 0, SEEK_CUR)) >= 0) &&
     ((new_offset = lseek(mine->fd, skip, SEEK_CUR)) >= 0))
  return (new_offset - old_offset);


 mine->use_lseek = 0;


 if (errno == ESPIPE)
  return (0);






 archive_set_error(a, errno, "Error seeking");
 return (-1);
}
