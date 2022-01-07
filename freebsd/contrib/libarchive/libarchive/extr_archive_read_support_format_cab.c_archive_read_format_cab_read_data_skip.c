
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cab {int end_of_entry_cleanup; int end_of_entry; TYPE_3__* entry_cfdata; TYPE_2__* entry_cffolder; scalar_t__ entry_bytes_remaining; scalar_t__ entry_unconsumed; int bytes_skipped; int read_data_invoked; scalar_t__ end_of_archive; } ;
struct archive_read {TYPE_1__* format; } ;
typedef scalar_t__ int64_t ;
struct TYPE_6__ {scalar_t__ unconsumed; } ;
struct TYPE_5__ {scalar_t__ comptype; } ;
struct TYPE_4__ {scalar_t__ data; } ;


 int ARCHIVE_EOF ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 scalar_t__ COMPTYPE_NONE ;
 scalar_t__ cab_consume_cfdata (struct archive_read*,scalar_t__) ;
 int cab_next_cfdata (struct archive_read*) ;

__attribute__((used)) static int
archive_read_format_cab_read_data_skip(struct archive_read *a)
{
 struct cab *cab;
 int64_t bytes_skipped;
 int r;

 cab = (struct cab *)(a->format->data);

 if (cab->end_of_archive)
  return (ARCHIVE_EOF);

 if (!cab->read_data_invoked) {
  cab->bytes_skipped += cab->entry_bytes_remaining;
  cab->entry_bytes_remaining = 0;

  cab->end_of_entry_cleanup = cab->end_of_entry = 1;
  return (ARCHIVE_OK);
 }

 if (cab->entry_unconsumed) {

  r = (int)cab_consume_cfdata(a, cab->entry_unconsumed);
  cab->entry_unconsumed = 0;
  if (r < 0)
   return (r);
 } else if (cab->entry_cfdata == ((void*)0)) {
  r = cab_next_cfdata(a);
  if (r < 0)
   return (r);
 }


 if (cab->end_of_entry_cleanup)
  return (ARCHIVE_OK);





 bytes_skipped = cab_consume_cfdata(a, cab->entry_bytes_remaining);
 if (bytes_skipped < 0)
  return (ARCHIVE_FATAL);



 if (cab->entry_cffolder->comptype == COMPTYPE_NONE &&
     cab->entry_cfdata != ((void*)0))
  cab->entry_cfdata->unconsumed = 0;


 cab->end_of_entry_cleanup = cab->end_of_entry = 1;
 return (ARCHIVE_OK);
}
