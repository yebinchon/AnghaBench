
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct read_FILE_data {void* buffer; size_t block_size; int f; } ;
struct archive {int dummy; } ;
typedef size_t ssize_t ;


 int archive_set_error (struct archive*,int ,char*) ;
 int errno ;
 scalar_t__ ferror (int ) ;
 size_t fread (void*,int,size_t,int ) ;

__attribute__((used)) static ssize_t
file_read(struct archive *a, void *client_data, const void **buff)
{
 struct read_FILE_data *mine = (struct read_FILE_data *)client_data;
 size_t bytes_read;

 *buff = mine->buffer;
 bytes_read = fread(mine->buffer, 1, mine->block_size, mine->f);
 if (bytes_read < mine->block_size && ferror(mine->f)) {
  archive_set_error(a, errno, "Error reading file");
 }
 return (bytes_read);
}
