
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cfdata {scalar_t__ uncompressed_bytes_remaining; int compressed_size; int compressed_bytes_remaining; scalar_t__ uncompressed_size; size_t memimage_size; int * memimage; scalar_t__ unconsumed; scalar_t__ read_offset; scalar_t__ uncompressed_avail; int sum; int * sum_ptr; scalar_t__ sum_extra_avail; scalar_t__ sum_calculated; } ;
struct TYPE_6__ {int flags; scalar_t__ cfdata; int folder_count; } ;
struct cab {scalar_t__ cab_offset; struct cfdata* entry_cfdata; TYPE_4__* entry_cffolder; TYPE_3__* entry_cffile; TYPE_2__ cfheader; } ;
struct archive_read {int archive; TYPE_1__* format; } ;
typedef int intmax_t ;
typedef scalar_t__ int64_t ;
struct TYPE_8__ {scalar_t__ cfdata_index; scalar_t__ cfdata_offset_in_cab; scalar_t__ cfdata_count; scalar_t__ comptype; struct cfdata cfdata; } ;
struct TYPE_7__ {int folder; } ;
struct TYPE_5__ {scalar_t__ data; } ;


 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int CFDATA_cbData ;
 int CFDATA_cbUncomp ;
 int CFDATA_csum ;
 scalar_t__ COMPTYPE_NONE ;
 int ENOMEM ;
 int RESERVE_PRESENT ;
 unsigned char* __archive_read_ahead (struct archive_read*,int,int *) ;
 scalar_t__ __archive_read_consume (struct archive_read*,int) ;
 void* archive_le16dec (unsigned char const*) ;
 int archive_le32dec (unsigned char const*) ;
 int archive_set_error (int *,int ,char*,...) ;
 int free (int *) ;



 int * malloc (int) ;
 int memcpy (int *,unsigned char const*,int) ;
 int memset (struct cfdata*,int ,int) ;
 int truncated_error (struct archive_read*) ;

__attribute__((used)) static int
cab_next_cfdata(struct archive_read *a)
{
 struct cab *cab = (struct cab *)(a->format->data);
 struct cfdata *cfdata = cab->entry_cfdata;


 if (cfdata != ((void*)0) && cfdata->uncompressed_bytes_remaining > 0)
  return (ARCHIVE_OK);

 if (cfdata == ((void*)0)) {
  int64_t skip;

  cab->entry_cffolder->cfdata_index = 0;


  skip = cab->entry_cffolder->cfdata_offset_in_cab
   - cab->cab_offset;
  if (skip < 0) {
   int folder_index;
   switch (cab->entry_cffile->folder) {
   case 130:
   case 129:
    folder_index = 0;
    break;
   case 128:
    folder_index = cab->cfheader.folder_count-1;
    break;
   default:
    folder_index = cab->entry_cffile->folder;
    break;
   }
   archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
       "Invalid offset of CFDATA in folder(%d) %jd < %jd",
       folder_index,
       (intmax_t)cab->entry_cffolder->cfdata_offset_in_cab,
       (intmax_t)cab->cab_offset);
   return (ARCHIVE_FATAL);
  }
  if (skip > 0) {
   if (__archive_read_consume(a, skip) < 0)
    return (ARCHIVE_FATAL);
   cab->cab_offset =
       cab->entry_cffolder->cfdata_offset_in_cab;
  }
 }




 if (cab->entry_cffolder->cfdata_index <
     cab->entry_cffolder->cfdata_count) {
  const unsigned char *p;
  int l;

  cfdata = &(cab->entry_cffolder->cfdata);
  cab->entry_cffolder->cfdata_index++;
  cab->entry_cfdata = cfdata;
  cfdata->sum_calculated = 0;
  cfdata->sum_extra_avail = 0;
  cfdata->sum_ptr = ((void*)0);
  l = 8;
  if (cab->cfheader.flags & RESERVE_PRESENT)
   l += cab->cfheader.cfdata;
  if ((p = __archive_read_ahead(a, l, ((void*)0))) == ((void*)0))
   return (truncated_error(a));
  cfdata->sum = archive_le32dec(p + CFDATA_csum);
  cfdata->compressed_size = archive_le16dec(p + CFDATA_cbData);
  cfdata->compressed_bytes_remaining = cfdata->compressed_size;
  cfdata->uncompressed_size =
      archive_le16dec(p + CFDATA_cbUncomp);
  cfdata->uncompressed_bytes_remaining =
      cfdata->uncompressed_size;
  cfdata->uncompressed_avail = 0;
  cfdata->read_offset = 0;
  cfdata->unconsumed = 0;




  if (cfdata->compressed_size == 0 ||
      cfdata->compressed_size > (0x8000+6144))
   goto invalid;
  if (cfdata->uncompressed_size > 0x8000)
   goto invalid;
  if (cfdata->uncompressed_size == 0) {
   switch (cab->entry_cffile->folder) {
   case 129:
   case 128:
    break;
   case 130:
   default:
    goto invalid;
   }
  }


  if ((cab->entry_cffolder->cfdata_index <
       cab->entry_cffolder->cfdata_count) &&
         cfdata->uncompressed_size != 0x8000)
   goto invalid;



  if (cab->entry_cffolder->comptype == COMPTYPE_NONE &&
      cfdata->compressed_size != cfdata->uncompressed_size)
   goto invalid;




  if (cfdata->memimage_size < (size_t)l) {
   free(cfdata->memimage);
   cfdata->memimage = malloc(l);
   if (cfdata->memimage == ((void*)0)) {
    archive_set_error(&a->archive, ENOMEM,
        "Can't allocate memory for CAB data");
    return (ARCHIVE_FATAL);
   }
   cfdata->memimage_size = l;
  }
  memcpy(cfdata->memimage, p, l);


  __archive_read_consume(a, l);
  cab->cab_offset += l;
 } else if (cab->entry_cffolder->cfdata_count > 0) {

  cfdata->compressed_size = 0;
  cfdata->uncompressed_size = 0;
  cfdata->compressed_bytes_remaining = 0;
  cfdata->uncompressed_bytes_remaining = 0;
 } else {

  cfdata = &(cab->entry_cffolder->cfdata);
  cab->entry_cfdata = cfdata;
  memset(cfdata, 0, sizeof(*cfdata));
 }
 return (ARCHIVE_OK);
invalid:
 archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
     "Invalid CFDATA");
 return (ARCHIVE_FATAL);
}
