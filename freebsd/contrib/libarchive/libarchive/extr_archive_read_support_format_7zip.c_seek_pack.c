
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct archive_read {int archive; TYPE_1__* format; } ;
struct TYPE_5__ {scalar_t__* positions; int * sizes; } ;
struct TYPE_6__ {TYPE_2__ pi; } ;
struct _7zip {scalar_t__ pack_stream_remaining; size_t pack_stream_index; scalar_t__ stream_offset; scalar_t__ seek_base; TYPE_3__ si; int pack_stream_inbytes_remaining; } ;
typedef scalar_t__ int64_t ;
struct TYPE_4__ {scalar_t__ data; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int SEEK_SET ;
 scalar_t__ __archive_read_seek (struct archive_read*,scalar_t__,int ) ;
 int archive_set_error (int *,int ,char*) ;

__attribute__((used)) static int
seek_pack(struct archive_read *a)
{
 struct _7zip *zip = (struct _7zip *)a->format->data;
 int64_t pack_offset;

 if (zip->pack_stream_remaining <= 0) {
  archive_set_error(&(a->archive),
      ARCHIVE_ERRNO_MISC, "Damaged 7-Zip archive");
  return (ARCHIVE_FATAL);
 }
 zip->pack_stream_inbytes_remaining =
     zip->si.pi.sizes[zip->pack_stream_index];
 pack_offset = zip->si.pi.positions[zip->pack_stream_index];
 if (zip->stream_offset != pack_offset) {
  if (0 > __archive_read_seek(a, pack_offset + zip->seek_base,
      SEEK_SET))
   return (ARCHIVE_FATAL);
  zip->stream_offset = pack_offset;
 }
 zip->pack_stream_index++;
 zip->pack_stream_remaining--;
 return (ARCHIVE_OK);
}
