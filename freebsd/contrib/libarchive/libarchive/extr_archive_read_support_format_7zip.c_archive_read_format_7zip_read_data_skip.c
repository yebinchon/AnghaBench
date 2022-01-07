
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_read {TYPE_1__* format; } ;
struct _7zip {int end_of_entry; scalar_t__ entry_bytes_remaining; scalar_t__ pack_stream_bytes_unconsumed; } ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {scalar_t__ data; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int read_consume (struct archive_read*) ;
 scalar_t__ skip_stream (struct archive_read*,size_t) ;

__attribute__((used)) static int
archive_read_format_7zip_read_data_skip(struct archive_read *a)
{
 struct _7zip *zip;
 int64_t bytes_skipped;

 zip = (struct _7zip *)(a->format->data);

 if (zip->pack_stream_bytes_unconsumed)
  read_consume(a);


 if (zip->end_of_entry)
  return (ARCHIVE_OK);





 bytes_skipped = skip_stream(a, (size_t)zip->entry_bytes_remaining);
 if (bytes_skipped < 0)
  return (ARCHIVE_FATAL);
 zip->entry_bytes_remaining = 0;


 zip->end_of_entry = 1;
 return (ARCHIVE_OK);
}
