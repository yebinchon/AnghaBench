
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {scalar_t__ read_data_offset; scalar_t__ read_data_output_offset; size_t read_data_remaining; void* read_data_block; int read_data_is_posix_read; size_t read_data_requested; } ;
typedef size_t la_ssize_t ;
typedef scalar_t__ int64_t ;


 int ARCHIVE_EOF ;
 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_OK ;
 size_t ARCHIVE_RETRY ;
 int archive_read_data_block (struct archive*,void const**,size_t*,scalar_t__*) ;
 int archive_set_error (struct archive*,int ,char*) ;
 int memcpy (char*,void*,size_t) ;
 int memset (char*,int ,size_t) ;

la_ssize_t
archive_read_data(struct archive *_a, void *buff, size_t s)
{
 struct archive *a = (struct archive *)_a;
 char *dest;
 const void *read_buf;
 size_t bytes_read;
 size_t len;
 int r;

 bytes_read = 0;
 dest = (char *)buff;

 while (s > 0) {
  if (a->read_data_offset == a->read_data_output_offset &&
      a->read_data_remaining == 0) {
   read_buf = a->read_data_block;
   a->read_data_is_posix_read = 1;
   a->read_data_requested = s;
   r = archive_read_data_block(a, &read_buf,
       &a->read_data_remaining, &a->read_data_offset);
   a->read_data_block = read_buf;
   if (r == ARCHIVE_EOF)
    return (bytes_read);





   if (r < ARCHIVE_OK)
    return (r);
  }

  if (a->read_data_offset < a->read_data_output_offset) {
   archive_set_error(a, ARCHIVE_ERRNO_FILE_FORMAT,
       "Encountered out-of-order sparse blocks");
   return (ARCHIVE_RETRY);
  }


  if (a->read_data_output_offset + (int64_t)s <
      a->read_data_offset) {
   len = s;
  } else if (a->read_data_output_offset <
      a->read_data_offset) {
   len = (size_t)(a->read_data_offset -
       a->read_data_output_offset);
  } else
   len = 0;


  memset(dest, 0, len);
  s -= len;
  a->read_data_output_offset += len;
  dest += len;
  bytes_read += len;


  if (s > 0) {
   len = a->read_data_remaining;
   if (len > s)
    len = s;
   if (len)
    memcpy(dest, a->read_data_block, len);
   s -= len;
   a->read_data_block += len;
   a->read_data_remaining -= len;
   a->read_data_output_offset += len;
   a->read_data_offset += len;
   dest += len;
   bytes_read += len;
  }
 }
 a->read_data_is_posix_read = 0;
 a->read_data_requested = 0;
 return (bytes_read);
}
