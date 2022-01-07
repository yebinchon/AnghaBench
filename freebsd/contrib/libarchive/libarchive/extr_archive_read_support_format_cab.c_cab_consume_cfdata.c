
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct cfdata {scalar_t__ compressed_size; scalar_t__ uncompressed_bytes_remaining; scalar_t__ uncompressed_avail; scalar_t__ uncompressed_size; int read_offset; scalar_t__ compressed_bytes_remaining; } ;
struct cab {TYPE_2__* entry_cffile; struct cfdata* entry_cfdata; int cab_offset; } ;
struct archive_read {int archive; TYPE_1__* format; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ int64_t ;
struct TYPE_4__ {int folder; } ;
struct TYPE_3__ {scalar_t__ data; } ;


 int ARCHIVE_ERRNO_FILE_FORMAT ;
 scalar_t__ ARCHIVE_FATAL ;
 int __archive_read_consume (struct archive_read*,scalar_t__) ;
 int archive_set_error (int *,int ,char*) ;
 scalar_t__ cab_minimum_consume_cfdata (struct archive_read*,scalar_t__) ;
 int cab_next_cfdata (struct archive_read*) ;
 int cab_read_ahead_cfdata (struct archive_read*,scalar_t__*) ;




__attribute__((used)) static int64_t
cab_consume_cfdata(struct archive_read *a, int64_t consumed_bytes)
{
 struct cab *cab = (struct cab *)(a->format->data);
 struct cfdata *cfdata;
 int64_t cbytes, rbytes;
 int err;

 rbytes = cab_minimum_consume_cfdata(a, consumed_bytes);
 if (rbytes < 0)
  return (ARCHIVE_FATAL);

 cfdata = cab->entry_cfdata;
 while (rbytes > 0) {
  ssize_t avail;

  if (cfdata->compressed_size == 0) {
   archive_set_error(&a->archive,
       ARCHIVE_ERRNO_FILE_FORMAT,
       "Invalid CFDATA");
   return (ARCHIVE_FATAL);
  }
  cbytes = cfdata->uncompressed_bytes_remaining;
  if (cbytes > rbytes)
   cbytes = rbytes;
  rbytes -= cbytes;

  if (cfdata->uncompressed_avail == 0 &&
     (cab->entry_cffile->folder == 129 ||
      cab->entry_cffile->folder == 130)) {

   if (cbytes == cfdata->uncompressed_bytes_remaining) {

    __archive_read_consume(a,
        cfdata->compressed_size);
    cab->cab_offset += cfdata->compressed_size;
    cfdata->compressed_bytes_remaining = 0;
    cfdata->uncompressed_bytes_remaining = 0;
    err = cab_next_cfdata(a);
    if (err < 0)
     return (err);
    cfdata = cab->entry_cfdata;
    if (cfdata->uncompressed_size == 0) {
     switch (cab->entry_cffile->folder) {
     case 129:
     case 128:
     case 130:
      rbytes = 0;
      break;
     default:
      break;
     }
    }
    continue;
   }
   cfdata->read_offset += (uint16_t)cbytes;
   cfdata->uncompressed_bytes_remaining -= (uint16_t)cbytes;
   break;
  } else if (cbytes == 0) {
   err = cab_next_cfdata(a);
   if (err < 0)
    return (err);
   cfdata = cab->entry_cfdata;
   if (cfdata->uncompressed_size == 0) {
    switch (cab->entry_cffile->folder) {
    case 129:
    case 128:
    case 130:
     return (ARCHIVE_FATAL);
    default:
     break;
    }
   }
   continue;
  }
  while (cbytes > 0) {
   (void)cab_read_ahead_cfdata(a, &avail);
   if (avail <= 0)
    return (ARCHIVE_FATAL);
   if (avail > cbytes)
    avail = (ssize_t)cbytes;
   if (cab_minimum_consume_cfdata(a, avail) < 0)
    return (ARCHIVE_FATAL);
   cbytes -= avail;
  }
 }
 return (consumed_bytes);
}
