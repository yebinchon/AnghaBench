
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct archive_read {int archive; TYPE_5__* format; } ;
struct TYPE_7__ {TYPE_1__* folders; } ;
struct TYPE_8__ {TYPE_2__ ci; } ;
struct _7zip {scalar_t__ folder_index; scalar_t__ pack_stream_bytes_unconsumed; TYPE_4__* entry; TYPE_3__ si; } ;
typedef size_t int64_t ;
struct TYPE_10__ {scalar_t__ data; } ;
struct TYPE_9__ {size_t folderIndex; } ;
struct TYPE_6__ {size_t skipped_bytes; } ;


 int ARCHIVE_ERRNO_FILE_FORMAT ;
 size_t ARCHIVE_FATAL ;
 int archive_set_error (int *,int ,char*) ;
 int read_consume (struct archive_read*) ;
 size_t read_stream (struct archive_read*,void const**,size_t,int ) ;

__attribute__((used)) static int64_t
skip_stream(struct archive_read *a, size_t skip_bytes)
{
 struct _7zip *zip = (struct _7zip *)a->format->data;
 const void *p;
 int64_t skipped_bytes;
 size_t bytes = skip_bytes;

 if (zip->folder_index == 0) {




  zip->si.ci.folders[zip->entry->folderIndex].skipped_bytes
      += skip_bytes;
  return (skip_bytes);
 }

 while (bytes) {
  skipped_bytes = read_stream(a, &p, bytes, 0);
  if (skipped_bytes < 0)
   return (skipped_bytes);
  if (skipped_bytes == 0) {
   archive_set_error(&a->archive,
       ARCHIVE_ERRNO_FILE_FORMAT,
       "Truncated 7-Zip file body");
   return (ARCHIVE_FATAL);
  }
  bytes -= (size_t)skipped_bytes;
  if (zip->pack_stream_bytes_unconsumed)
   read_consume(a);
 }
 return (skip_bytes);
}
