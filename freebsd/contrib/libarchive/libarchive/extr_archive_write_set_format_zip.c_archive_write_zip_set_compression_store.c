
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zip {int requested_compression; } ;
struct TYPE_2__ {scalar_t__ archive_format; } ;
struct archive_write {TYPE_1__ archive; struct zip* format_data; } ;
struct archive {int dummy; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 scalar_t__ ARCHIVE_FORMAT_ZIP ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_DATA ;
 int ARCHIVE_STATE_HEADER ;
 int ARCHIVE_STATE_NEW ;
 int ARCHIVE_WRITE_MAGIC ;
 int COMPRESSION_STORE ;
 int archive_check_magic (struct archive*,int ,int,char*) ;
 int archive_set_error (TYPE_1__*,int ,char*) ;

int
archive_write_zip_set_compression_store(struct archive *_a)
{
 struct archive_write *a = (struct archive_write *)_a;
 struct zip *zip = a->format_data;
 int ret = ARCHIVE_FAILED;

 archive_check_magic(_a, ARCHIVE_WRITE_MAGIC,
  ARCHIVE_STATE_NEW | ARCHIVE_STATE_HEADER | ARCHIVE_STATE_DATA,
  "archive_write_zip_set_compression_deflate");
 if (a->archive.archive_format != ARCHIVE_FORMAT_ZIP) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
   "Can only use archive_write_zip_set_compression_store"
   " with zip format");
  ret = ARCHIVE_FATAL;
 } else {
  zip->requested_compression = COMPRESSION_STORE;
  ret = ARCHIVE_OK;
 }
 return (ret);
}
