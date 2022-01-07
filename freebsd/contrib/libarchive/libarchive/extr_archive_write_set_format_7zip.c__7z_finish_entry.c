
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct archive_write {size_t null_length; int nulls; scalar_t__ format_data; } ;
struct TYPE_3__ {scalar_t__ total_out; scalar_t__ total_in; } ;
struct _7zip {scalar_t__ entry_bytes_remaining; TYPE_2__* cur_file; int entry_crc32; TYPE_1__ stream; int total_bytes_uncompressed; int total_bytes_compressed; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_4__ {int crc32; } ;


 int ARCHIVE_OK ;
 scalar_t__ _7z_write_data (struct archive_write*,int ,size_t) ;

__attribute__((used)) static int
_7z_finish_entry(struct archive_write *a)
{
 struct _7zip *zip;
 size_t s;
 ssize_t r;

 zip = (struct _7zip *)a->format_data;
 if (zip->cur_file == ((void*)0))
  return (ARCHIVE_OK);

 while (zip->entry_bytes_remaining > 0) {
  s = (size_t)zip->entry_bytes_remaining;
  if (s > a->null_length)
   s = a->null_length;
  r = _7z_write_data(a, a->nulls, s);
  if (r < 0)
   return ((int)r);
 }
 zip->total_bytes_compressed += zip->stream.total_in;
 zip->total_bytes_uncompressed += zip->stream.total_out;
 zip->cur_file->crc32 = zip->entry_crc32;
 zip->cur_file = ((void*)0);

 return (ARCHIVE_OK);
}
