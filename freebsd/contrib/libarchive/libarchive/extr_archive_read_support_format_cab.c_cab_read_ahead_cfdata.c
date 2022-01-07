
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cab {TYPE_2__* entry_cffolder; } ;
struct archive_read {int archive; TYPE_1__* format; } ;
typedef int ssize_t ;
struct TYPE_4__ {int comptype; int compname; } ;
struct TYPE_3__ {scalar_t__ data; } ;


 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_OK ;



 int archive_set_error (int *,int ,char*,int ) ;
 int cab_next_cfdata (struct archive_read*) ;
 void const* cab_read_ahead_cfdata_deflate (struct archive_read*,int*) ;
 void const* cab_read_ahead_cfdata_lzx (struct archive_read*,int*) ;
 void const* cab_read_ahead_cfdata_none (struct archive_read*,int*) ;

__attribute__((used)) static const void *
cab_read_ahead_cfdata(struct archive_read *a, ssize_t *avail)
{
 struct cab *cab = (struct cab *)(a->format->data);
 int err;

 err = cab_next_cfdata(a);
 if (err < ARCHIVE_OK) {
  *avail = err;
  return (((void*)0));
 }

 switch (cab->entry_cffolder->comptype) {
 case 128:
  return (cab_read_ahead_cfdata_none(a, avail));
 case 129:
  return (cab_read_ahead_cfdata_deflate(a, avail));
 case 130:
  return (cab_read_ahead_cfdata_lzx(a, avail));
 default:
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Unsupported CAB compression : %s",
      cab->entry_cffolder->compname);
  *avail = ARCHIVE_FAILED;
  return (((void*)0));
 }
}
