
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uInt ;
struct zip_entry {int compression; int uncompressed_size; int compressed_size; scalar_t__ local_header_offset; } ;
struct TYPE_4__ {size_t total_in; unsigned char* next_out; size_t total_out; void* avail_out; void* avail_in; int * next_in; } ;
struct zip {scalar_t__ decompress_init; TYPE_2__ stream; } ;
struct archive_read {int archive; TYPE_1__* format; } ;
struct archive_entry {int dummy; } ;
typedef size_t ssize_t ;
typedef int intmax_t ;
typedef scalar_t__ int64_t ;
struct TYPE_3__ {scalar_t__ data; } ;
typedef int Bytef ;


 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int ENOMEM ;
 int SEEK_SET ;



 unsigned char* __archive_read_ahead (struct archive_read*,int,size_t*) ;
 int __archive_read_consume (struct archive_read*,size_t) ;
 int __archive_read_seek (struct archive_read*,scalar_t__,int ) ;
 int archive_entry_copy_mac_metadata (struct archive_entry*,unsigned char*,size_t) ;
 scalar_t__ archive_filter_bytes (int *,int ) ;
 int archive_set_error (int *,int ,char*,...) ;
 int compression_name (int) ;
 int free (unsigned char*) ;
 int inflate (TYPE_2__*,int ) ;
 unsigned char* malloc (size_t) ;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;
 int zip_deflate_init (struct archive_read*,struct zip*) ;
 size_t zip_get_local_file_header_size (struct archive_read*,int ) ;

__attribute__((used)) static int
zip_read_mac_metadata(struct archive_read *a, struct archive_entry *entry,
    struct zip_entry *rsrc)
{
 struct zip *zip = (struct zip *)a->format->data;
 unsigned char *metadata, *mp;
 int64_t offset = archive_filter_bytes(&a->archive, 0);
 size_t remaining_bytes, metadata_bytes;
 ssize_t hsize;
 int ret = ARCHIVE_OK, eof;

 switch(rsrc->compression) {
 case 0:
  if (rsrc->uncompressed_size != rsrc->compressed_size) {
   archive_set_error(&a->archive,
       ARCHIVE_ERRNO_FILE_FORMAT,
       "Malformed OS X metadata entry: "
       "inconsistent size");
   return (ARCHIVE_FATAL);
  }



  break;
 default:

  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Unsupported ZIP compression method (%s)",
      compression_name(rsrc->compression));


  return (ARCHIVE_WARN);
 }

 if (rsrc->uncompressed_size > (4 * 1024 * 1024)) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Mac metadata is too large: %jd > 4M bytes",
      (intmax_t)rsrc->uncompressed_size);
  return (ARCHIVE_WARN);
 }
 if (rsrc->compressed_size > (4 * 1024 * 1024)) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Mac metadata is too large: %jd > 4M bytes",
      (intmax_t)rsrc->compressed_size);
  return (ARCHIVE_WARN);
 }

 metadata = malloc((size_t)rsrc->uncompressed_size);
 if (metadata == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate memory for Mac metadata");
  return (ARCHIVE_FATAL);
 }

 if (offset < rsrc->local_header_offset)
  __archive_read_consume(a, rsrc->local_header_offset - offset);
 else if (offset != rsrc->local_header_offset) {
  __archive_read_seek(a, rsrc->local_header_offset, SEEK_SET);
 }

 hsize = zip_get_local_file_header_size(a, 0);
 __archive_read_consume(a, hsize);

 remaining_bytes = (size_t)rsrc->compressed_size;
 metadata_bytes = (size_t)rsrc->uncompressed_size;
 mp = metadata;
 eof = 0;
 while (!eof && remaining_bytes) {
  const unsigned char *p;
  ssize_t bytes_avail;
  size_t bytes_used;

  p = __archive_read_ahead(a, 1, &bytes_avail);
  if (p == ((void*)0)) {
   archive_set_error(&a->archive,
       ARCHIVE_ERRNO_FILE_FORMAT,
       "Truncated ZIP file header");
   ret = ARCHIVE_WARN;
   goto exit_mac_metadata;
  }
  if ((size_t)bytes_avail > remaining_bytes)
   bytes_avail = remaining_bytes;
  switch(rsrc->compression) {
  case 0:
   if ((size_t)bytes_avail > metadata_bytes)
    bytes_avail = metadata_bytes;
   memcpy(mp, p, bytes_avail);
   bytes_used = (size_t)bytes_avail;
   metadata_bytes -= bytes_used;
   mp += bytes_used;
   if (metadata_bytes == 0)
    eof = 1;
   break;
  default:
   bytes_used = 0;
   break;
  }
  __archive_read_consume(a, bytes_used);
  remaining_bytes -= bytes_used;
 }
 archive_entry_copy_mac_metadata(entry, metadata,
     (size_t)rsrc->uncompressed_size - metadata_bytes);

exit_mac_metadata:
 __archive_read_seek(a, offset, SEEK_SET);
 zip->decompress_init = 0;
 free(metadata);
 return (ret);
}
