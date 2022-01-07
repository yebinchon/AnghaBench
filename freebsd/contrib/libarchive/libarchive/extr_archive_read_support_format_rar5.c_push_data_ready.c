
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {scalar_t__ last_offset; size_t last_size; } ;
struct TYPE_3__ {struct data_ready* dready; } ;
struct rar5 {TYPE_2__ file; TYPE_1__ cstate; scalar_t__ skip_mode; } ;
struct data_ready {int used; size_t size; int const* buf; scalar_t__ offset; } ;
struct archive_read {int archive; } ;
typedef scalar_t__ int64_t ;


 int ARCHIVE_ERRNO_PROGRAMMER ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int archive_set_error (int *,int ,char*) ;
 int rar5_countof (struct data_ready*) ;
 int update_crc (struct rar5*,int const*,size_t) ;

__attribute__((used)) static int push_data_ready(struct archive_read* a, struct rar5* rar,
    const uint8_t* buf, size_t size, int64_t offset)
{
 int i;







 if(rar->skip_mode)
  return ARCHIVE_OK;


 if(offset != rar->file.last_offset + rar->file.last_size) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_PROGRAMMER,
      "Sanity check error: output stream is not continuous");
  return ARCHIVE_FATAL;
 }

 for(i = 0; i < rar5_countof(rar->cstate.dready); i++) {
  struct data_ready* d = &rar->cstate.dready[i];
  if(!d->used) {
   d->used = 1;
   d->buf = buf;
   d->size = size;
   d->offset = offset;


   rar->file.last_offset = offset;
   rar->file.last_size = size;



   update_crc(rar, d->buf, d->size);

   return ARCHIVE_OK;
  }
 }






 archive_set_error(&a->archive, ARCHIVE_ERRNO_PROGRAMMER,
     "Error: premature end of data_ready stack");
 return ARCHIVE_FATAL;
}
