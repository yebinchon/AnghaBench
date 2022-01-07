
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint64_t ;
struct archive_write_disk {scalar_t__ filesize; scalar_t__ fd; int flags; size_t offset; scalar_t__ fd_offset; int total_bytes_written; int archive; TYPE_1__* pst; } ;
typedef int ssize_t ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {int st_blksize; } ;


 int ARCHIVE_EXTRACT_SPARSE ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int SEEK_SET ;
 int archive_set_error (int *,int ,char*) ;
 int errno ;
 int lazy_stat (struct archive_write_disk*) ;
 scalar_t__ lseek (scalar_t__,scalar_t__,int ) ;
 int write (scalar_t__,char const*,int) ;

__attribute__((used)) static ssize_t
write_data_block(struct archive_write_disk *a, const char *buff, size_t size)
{
 uint64_t start_size = size;
 ssize_t bytes_written = 0;
 ssize_t block_size = 0, bytes_to_write;

 if (size == 0)
  return (ARCHIVE_OK);

 if (a->filesize == 0 || a->fd < 0) {
  archive_set_error(&a->archive, 0,
      "Attempt to write to an empty file");
  return (ARCHIVE_WARN);
 }

 if (a->flags & ARCHIVE_EXTRACT_SPARSE) {
  block_size = 16*1024;

 }


 if (a->filesize >= 0 && (int64_t)(a->offset + size) > a->filesize)
  start_size = size = (size_t)(a->filesize - a->offset);


 while (size > 0) {
  if (block_size == 0) {
   bytes_to_write = size;
  } else {

   const char *p, *end;
   int64_t block_end;


   for (p = buff, end = buff + size; p < end; ++p) {
    if (*p != '\0')
     break;
   }
   a->offset += p - buff;
   size -= p - buff;
   buff = p;
   if (size == 0)
    break;


   block_end
       = (a->offset / block_size + 1) * block_size;



   bytes_to_write = size;
   if (a->offset + bytes_to_write > block_end)
    bytes_to_write = block_end - a->offset;
  }

  if (a->offset != a->fd_offset) {
   if (lseek(a->fd, a->offset, SEEK_SET) < 0) {
    archive_set_error(&a->archive, errno,
        "Seek failed");
    return (ARCHIVE_FATAL);
   }
   a->fd_offset = a->offset;
  }
  bytes_written = write(a->fd, buff, bytes_to_write);
  if (bytes_written < 0) {
   archive_set_error(&a->archive, errno, "Write failed");
   return (ARCHIVE_WARN);
  }
  buff += bytes_written;
  size -= bytes_written;
  a->total_bytes_written += bytes_written;
  a->offset += bytes_written;
  a->fd_offset = a->offset;
 }
 return (start_size - size);
}
