
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w; int m; } ;
struct read_file_data {void* buffer; scalar_t__ filename_type; TYPE_1__ filename; int block_size; int fd; } ;
struct archive {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EINTR ;
 scalar_t__ FNT_MBS ;
 scalar_t__ FNT_STDIN ;
 int archive_set_error (struct archive*,scalar_t__,char*,...) ;
 scalar_t__ errno ;
 scalar_t__ read (int ,void*,int ) ;

__attribute__((used)) static ssize_t
file_read(struct archive *a, void *client_data, const void **buff)
{
 struct read_file_data *mine = (struct read_file_data *)client_data;
 ssize_t bytes_read;
 *buff = mine->buffer;
 for (;;) {
  bytes_read = read(mine->fd, mine->buffer, mine->block_size);
  if (bytes_read < 0) {
   if (errno == EINTR)
    continue;
   else if (mine->filename_type == FNT_STDIN)
    archive_set_error(a, errno,
        "Error reading stdin");
   else if (mine->filename_type == FNT_MBS)
    archive_set_error(a, errno,
        "Error reading '%s'", mine->filename.m);
   else
    archive_set_error(a, errno,
        "Error reading '%S'", mine->filename.w);
  }
  return (bytes_read);
 }
}
