
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cfdata {scalar_t__ sum; int sum_extra_avail; scalar_t__ sum_calculated; int compressed_size; scalar_t__ memimage; scalar_t__ sum_extra; } ;
struct TYPE_5__ {int flags; scalar_t__ cfdata; } ;
struct cab {TYPE_3__* entry_cffolder; TYPE_2__ cfheader; struct cfdata* entry_cfdata; } ;
struct archive_read {int archive; TYPE_1__* format; } ;
struct TYPE_6__ {scalar_t__ cfdata_index; } ;
struct TYPE_4__ {scalar_t__ data; } ;


 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_OK ;
 scalar_t__ CFDATA_cbData ;
 int RESERVE_PRESENT ;
 int archive_set_error (int *,int ,char*,scalar_t__,scalar_t__,scalar_t__,int ) ;
 void* cab_checksum_cfdata (scalar_t__,int,scalar_t__) ;

__attribute__((used)) static int
cab_checksum_finish(struct archive_read *a)
{
 struct cab *cab = (struct cab *)(a->format->data);
 struct cfdata *cfdata = cab->entry_cfdata;
 int l;


 if (cfdata->sum == 0)
  return (ARCHIVE_OK);




 if (cfdata->sum_extra_avail) {
  cfdata->sum_calculated =
      cab_checksum_cfdata(cfdata->sum_extra,
         cfdata->sum_extra_avail, cfdata->sum_calculated);
  cfdata->sum_extra_avail = 0;
 }

 l = 4;
 if (cab->cfheader.flags & RESERVE_PRESENT)
  l += cab->cfheader.cfdata;
 cfdata->sum_calculated = cab_checksum_cfdata(
     cfdata->memimage + CFDATA_cbData, l, cfdata->sum_calculated);
 if (cfdata->sum_calculated != cfdata->sum) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Checksum error CFDATA[%d] %x:%x in %d bytes",
      cab->entry_cffolder->cfdata_index -1,
      cfdata->sum, cfdata->sum_calculated,
      cfdata->compressed_size);
  return (ARCHIVE_FAILED);
 }
 return (ARCHIVE_OK);
}
