
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct file {scalar_t__ size; int* utf16name; int name_len; int mode; scalar_t__ dir; struct file* next; } ;
struct coder {int dummy; } ;
struct archive_write {scalar_t__ format_data; } ;
struct TYPE_2__ {struct file* first; } ;
struct _7zip {int total_number_entry; int total_number_empty_entry; int total_number_dir_entry; int total_bytes_entry_name; TYPE_1__ file_list; scalar_t__ total_number_nonempty_entry; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_Z_RUN ;
 int ATIME ;
 int ATIME_IS_SET ;
 int CTIME ;
 int CTIME_IS_SET ;
 int MTIME ;
 int MTIME_IS_SET ;
 int archive_le32enc (int*,int) ;
 scalar_t__ compress_out (struct archive_write*,int*,int,int ) ;
 int enc_uint64 (struct archive_write*,int) ;
 int kATime ;
 int kAttributes ;
 int kCTime ;
 int kEmptyFile ;
 int kEmptyStream ;
 int kEnd ;
 int kFilesInfo ;
 int kHeader ;
 int kMTime ;
 int kMainStreamsInfo ;
 int kName ;
 int make_streamsInfo (struct archive_write*,int ,int ,int ,int,struct coder*,int,int ) ;
 int make_time (struct archive_write*,int ,int ,int ) ;

__attribute__((used)) static int
make_header(struct archive_write *a, uint64_t offset, uint64_t pack_size,
    uint64_t unpack_size, int codernum, struct coder *coders)
{
 struct _7zip *zip = (struct _7zip *)a->format_data;
 struct file *file;
 int r;
 uint8_t b, mask;




 r = enc_uint64(a, kHeader);
 if (r < 0)
  return (r);




 if (zip->total_number_nonempty_entry) {



  r = enc_uint64(a, kMainStreamsInfo);
  if (r < 0)
   return (r);
  r = make_streamsInfo(a, offset, pack_size, unpack_size,
        codernum, coders, 1, 0);
  if (r < 0)
   return (r);
 }




 r = enc_uint64(a, kFilesInfo);
 if (r < 0)
  return (r);


 r = enc_uint64(a, zip->total_number_entry);
 if (r < 0)
  return (r);

 if (zip->total_number_empty_entry > 0) {

  r = enc_uint64(a, kEmptyStream);
  if (r < 0)
   return (r);


  r = enc_uint64(a, (zip->total_number_entry+7)>>3);
  if (r < 0)
   return (r);

  b = 0;
  mask = 0x80;
  file = zip->file_list.first;
  for (;file != ((void*)0); file = file->next) {
   if (file->size == 0)
    b |= mask;
   mask >>= 1;
   if (mask == 0) {
    r = (int)compress_out(a, &b, 1, ARCHIVE_Z_RUN);
    if (r < 0)
     return (r);
    mask = 0x80;
    b = 0;
   }
  }
  if (mask != 0x80) {
   r = (int)compress_out(a, &b, 1, ARCHIVE_Z_RUN);
   if (r < 0)
    return (r);
  }
 }

 if (zip->total_number_empty_entry > zip->total_number_dir_entry) {

  r = enc_uint64(a, kEmptyFile);
  if (r < 0)
   return (r);


  r = enc_uint64(a, (zip->total_number_empty_entry + 7) >> 3);
  if (r < 0)
   return (r);

  b = 0;
  mask = 0x80;
  file = zip->file_list.first;
  for (;file != ((void*)0); file = file->next) {
   if (file->size)
    continue;
   if (!file->dir)
    b |= mask;
   mask >>= 1;
   if (mask == 0) {
    r = (int)compress_out(a, &b, 1, ARCHIVE_Z_RUN);
    if (r < 0)
     return (r);
    mask = 0x80;
    b = 0;
   }
  }
  if (mask != 0x80) {
   r = (int)compress_out(a, &b, 1, ARCHIVE_Z_RUN);
   if (r < 0)
    return (r);
  }
 }


 r = enc_uint64(a, kName);
 if (r < 0)
  return (r);


 r = enc_uint64(a, zip->total_bytes_entry_name+1);
 if (r < 0)
  return (r);


 r = enc_uint64(a, 0);
 if (r < 0)
  return (r);

 file = zip->file_list.first;
 for (;file != ((void*)0); file = file->next) {
  r = (int)compress_out(a, file->utf16name, file->name_len+2,
   ARCHIVE_Z_RUN);
  if (r < 0)
   return (r);
 }


 r = make_time(a, kMTime, MTIME_IS_SET, MTIME);
 if (r < 0)
  return (r);


 r = make_time(a, kCTime, CTIME_IS_SET, CTIME);
 if (r < 0)
  return (r);


 r = make_time(a, kATime, ATIME_IS_SET, ATIME);
 if (r < 0)
  return (r);


 r = enc_uint64(a, kAttributes);
 if (r < 0)
  return (r);


 r = enc_uint64(a, 2 + zip->total_number_entry * 4);
 if (r < 0)
  return (r);


 r = enc_uint64(a, 1);
 if (r < 0)
  return (r);


 r = enc_uint64(a, 0);
 if (r < 0)
  return (r);

 file = zip->file_list.first;
 for (;file != ((void*)0); file = file->next) {




  uint32_t encattr, attr;
  if (file->dir)
   attr = 0x8010;
  else
   attr = 0x8020;
  if ((file->mode & 0222) == 0)
   attr |= 1;
  attr |= ((uint32_t)file->mode) << 16;
  archive_le32enc(&encattr, attr);
  r = (int)compress_out(a, &encattr, 4, ARCHIVE_Z_RUN);
  if (r < 0)
   return (r);
 }


 r = enc_uint64(a, kEnd);
 if (r < 0)
  return (r);


 r = enc_uint64(a, kEnd);
 if (r < 0)
  return (r);

 return (ARCHIVE_OK);
}
