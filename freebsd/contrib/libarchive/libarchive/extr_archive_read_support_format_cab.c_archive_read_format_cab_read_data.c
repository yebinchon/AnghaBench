
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cab {int read_data_invoked; int end_of_entry_cleanup; int entry_offset; scalar_t__ end_of_entry; scalar_t__ end_of_archive; scalar_t__ entry_unconsumed; scalar_t__ bytes_skipped; int * entry_cfdata; TYPE_2__* entry_cffile; } ;
struct archive_read {int archive; TYPE_1__* format; } ;
typedef int int64_t ;
struct TYPE_4__ {int folder; } ;
struct TYPE_3__ {scalar_t__ data; } ;


 int ARCHIVE_EOF ;
 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 int archive_clear_error (int *) ;
 int archive_set_error (int *,int ,char*) ;
 scalar_t__ cab_consume_cfdata (struct archive_read*,scalar_t__) ;
 int cab_next_cfdata (struct archive_read*) ;
 int cab_read_data (struct archive_read*,void const**,size_t*,int *) ;




__attribute__((used)) static int
archive_read_format_cab_read_data(struct archive_read *a,
    const void **buff, size_t *size, int64_t *offset)
{
 struct cab *cab = (struct cab *)(a->format->data);
 int r;

 switch (cab->entry_cffile->folder) {
 case 130:
 case 128:
 case 129:
  *buff = ((void*)0);
  *size = 0;
  *offset = 0;
  archive_clear_error(&a->archive);
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Cannot restore this file split in multivolume.");
  return (ARCHIVE_FAILED);
 default:
  break;
 }
 if (cab->read_data_invoked == 0) {
  if (cab->bytes_skipped) {
   if (cab->entry_cfdata == ((void*)0)) {
    r = cab_next_cfdata(a);
    if (r < 0)
     return (r);
   }
   if (cab_consume_cfdata(a, cab->bytes_skipped) < 0)
    return (ARCHIVE_FATAL);
   cab->bytes_skipped = 0;
  }
  cab->read_data_invoked = 1;
 }
 if (cab->entry_unconsumed) {

  r = (int)cab_consume_cfdata(a, cab->entry_unconsumed);
  cab->entry_unconsumed = 0;
  if (r < 0)
   return (r);
 }
 if (cab->end_of_archive || cab->end_of_entry) {
  if (!cab->end_of_entry_cleanup) {

   cab->end_of_entry_cleanup = 1;
  }
  *offset = cab->entry_offset;
  *size = 0;
  *buff = ((void*)0);
  return (ARCHIVE_EOF);
 }

 return (cab_read_data(a, buff, size, offset));
}
