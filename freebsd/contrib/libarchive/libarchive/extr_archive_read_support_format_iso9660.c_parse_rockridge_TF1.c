
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_info {int birthtime_is_set; void* ctime; void* atime; void* mtime; void* birthtime; } ;


 void* isodate17 (unsigned char const*) ;
 void* isodate7 (unsigned char const*) ;

__attribute__((used)) static void
parse_rockridge_TF1(struct file_info *file, const unsigned char *data,
    int data_length)
{
 char flag;
 if (data_length < 1)
  return;
 flag = data[0];
 ++data;
 --data_length;
 if (flag & 0x80) {

  if ((flag & 1) && data_length >= 17) {

   file->birthtime_is_set = 1;
   file->birthtime = isodate17(data);
   data += 17;
   data_length -= 17;
  }
  if ((flag & 2) && data_length >= 17) {

   file->mtime = isodate17(data);
   data += 17;
   data_length -= 17;
  }
  if ((flag & 4) && data_length >= 17) {

   file->atime = isodate17(data);
   data += 17;
   data_length -= 17;
  }
  if ((flag & 8) && data_length >= 17) {

   file->ctime = isodate17(data);
  }
 } else {

  if ((flag & 1) && data_length >= 7) {

   file->birthtime_is_set = 1;
   file->birthtime = isodate7(data);
   data += 7;
   data_length -= 7;
  }
  if ((flag & 2) && data_length >= 7) {

   file->mtime = isodate7(data);
   data += 7;
   data_length -= 7;
  }
  if ((flag & 4) && data_length >= 7) {

   file->atime = isodate7(data);
   data += 7;
   data_length -= 7;
  }
  if ((flag & 8) && data_length >= 7) {

   file->ctime = isodate7(data);
  }
 }
}
