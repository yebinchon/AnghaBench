
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct file {scalar_t__ size; int crc32; struct file* next; } ;
struct coder {scalar_t__ codec; } ;
struct archive_write {scalar_t__ format_data; } ;
struct TYPE_2__ {struct file* first; } ;
struct _7zip {int total_number_nonempty_entry; TYPE_1__ file_list; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_Z_RUN ;
 scalar_t__ _7Z_COPY ;
 int archive_le32enc (int *,int ) ;
 scalar_t__ compress_out (struct archive_write*,int *,int,int ) ;
 int enc_uint64 (struct archive_write*,int) ;
 int kCRC ;
 int kEnd ;
 int kNumUnPackStream ;
 int kSize ;
 int kSubStreamsInfo ;

__attribute__((used)) static int
make_substreamsInfo(struct archive_write *a, struct coder *coders)
{
 struct _7zip *zip = (struct _7zip *)a->format_data;
 struct file *file;
 int r;




 r = enc_uint64(a, kSubStreamsInfo);
 if (r < 0)
  return (r);

 if (zip->total_number_nonempty_entry > 1 && coders->codec != _7Z_COPY) {



  r = enc_uint64(a, kNumUnPackStream);
  if (r < 0)
   return (r);


  r = enc_uint64(a, zip->total_number_nonempty_entry);
  if (r < 0)
   return (r);




  r = enc_uint64(a, kSize);
  if (r < 0)
   return (r);
  file = zip->file_list.first;
  for (;file != ((void*)0); file = file->next) {
   if (file->next == ((void*)0) ||
       file->next->size == 0)
    break;
   r = enc_uint64(a, file->size);
   if (r < 0)
    return (r);
  }
 }




 r = enc_uint64(a, kCRC);
 if (r < 0)
  return (r);



 r = enc_uint64(a, 1);
 if (r < 0)
  return (r);
 file = zip->file_list.first;
 for (;file != ((void*)0); file = file->next) {
  uint8_t crc[4];
  if (file->size == 0)
   break;
  archive_le32enc(crc, file->crc32);
  r = (int)compress_out(a, crc, 4, ARCHIVE_Z_RUN);
  if (r < 0)
   return (r);
 }


 r = enc_uint64(a, kEnd);
 if (r < 0)
  return (r);
 return (ARCHIVE_OK);
}
