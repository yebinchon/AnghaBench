
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct archive_read {int archive; TYPE_1__* format; } ;
struct TYPE_6__ {scalar_t__* digests; } ;
struct TYPE_7__ {TYPE_2__ ss; } ;
struct _7zip {scalar_t__ has_encrypted_entries; size_t entry_offset; int end_of_entry; scalar_t__ entry_bytes_remaining; scalar_t__ entry_crc32; TYPE_4__* entry; TYPE_3__ si; scalar_t__ pack_stream_bytes_unconsumed; } ;
typedef size_t ssize_t ;
typedef size_t int64_t ;
struct TYPE_8__ {int flg; size_t ssIndex; } ;
struct TYPE_5__ {scalar_t__ data; } ;


 int ARCHIVE_EOF ;
 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 scalar_t__ ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW ;
 int ARCHIVE_WARN ;
 int CRC32_IS_SET ;
 int archive_set_error (int *,int ,char*,...) ;
 scalar_t__ crc32 (scalar_t__,void const*,unsigned int) ;
 int read_consume (struct archive_read*) ;
 size_t read_stream (struct archive_read*,void const**,size_t,int ) ;

__attribute__((used)) static int
archive_read_format_7zip_read_data(struct archive_read *a,
    const void **buff, size_t *size, int64_t *offset)
{
 struct _7zip *zip;
 ssize_t bytes;
 int ret = ARCHIVE_OK;

 zip = (struct _7zip *)(a->format->data);

 if (zip->has_encrypted_entries == ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW) {
  zip->has_encrypted_entries = 0;
 }

 if (zip->pack_stream_bytes_unconsumed)
  read_consume(a);

 *offset = zip->entry_offset;
 *size = 0;
 *buff = ((void*)0);




 if (zip->end_of_entry)
  return (ARCHIVE_EOF);

 bytes = read_stream(a, buff,
  (size_t)zip->entry_bytes_remaining, 0);
 if (bytes < 0)
  return ((int)bytes);
 if (bytes == 0) {
  archive_set_error(&a->archive,
      ARCHIVE_ERRNO_FILE_FORMAT,
      "Truncated 7-Zip file body");
  return (ARCHIVE_FATAL);
 }
 zip->entry_bytes_remaining -= bytes;
 if (zip->entry_bytes_remaining == 0)
  zip->end_of_entry = 1;


 if ((zip->entry->flg & CRC32_IS_SET) && bytes)
  zip->entry_crc32 = crc32(zip->entry_crc32, *buff,
      (unsigned)bytes);


 if (zip->end_of_entry) {

  if ((zip->entry->flg & CRC32_IS_SET) &&
   zip->si.ss.digests[zip->entry->ssIndex] !=
      zip->entry_crc32) {
   archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
       "7-Zip bad CRC: 0x%lx should be 0x%lx",
       (unsigned long)zip->entry_crc32,
       (unsigned long)zip->si.ss.digests[
         zip->entry->ssIndex]);
   ret = ARCHIVE_WARN;
  }
 }

 *size = bytes;
 *offset = zip->entry_offset;
 zip->entry_offset += bytes;

 return (ret);
}
