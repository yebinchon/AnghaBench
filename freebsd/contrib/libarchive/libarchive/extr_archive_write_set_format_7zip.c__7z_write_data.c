
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {scalar_t__ format_data; } ;
struct _7zip {size_t entry_bytes_remaining; int entry_crc32; int * cur_file; } ;
typedef scalar_t__ ssize_t ;


 int ARCHIVE_Z_RUN ;
 scalar_t__ compress_out (struct archive_write*,void const*,size_t,int ) ;
 int crc32 (int ,void const*,unsigned int) ;

__attribute__((used)) static ssize_t
_7z_write_data(struct archive_write *a, const void *buff, size_t s)
{
 struct _7zip *zip;
 ssize_t bytes;

 zip = (struct _7zip *)a->format_data;

 if (s > zip->entry_bytes_remaining)
  s = (size_t)zip->entry_bytes_remaining;
 if (s == 0 || zip->cur_file == ((void*)0))
  return (0);
 bytes = compress_out(a, buff, s, ARCHIVE_Z_RUN);
 if (bytes < 0)
  return (bytes);
 zip->entry_crc32 = crc32(zip->entry_crc32, buff, (unsigned)bytes);
 zip->entry_bytes_remaining -= bytes;
 return (bytes);
}
