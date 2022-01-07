
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip {int crc32func; int has_encrypted_entries; scalar_t__ process_mac_extensions; } ;
struct archive_read {int archive; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW ;
 int ARCHIVE_READ_MAGIC ;
 int ARCHIVE_STATE_NEW ;
 int ENOMEM ;
 int __archive_read_register_format (struct archive_read*,struct zip*,char*,int ,int ,int ,int ,int ,int *,int ,int ,int ) ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_read_format_zip_cleanup ;
 int archive_read_format_zip_has_encrypted_entries ;
 int archive_read_format_zip_options ;
 int archive_read_format_zip_read_data ;
 int archive_read_format_zip_read_data_skip_streamable ;
 int archive_read_format_zip_streamable_bid ;
 int archive_read_format_zip_streamable_read_header ;
 int archive_read_support_format_zip_capabilities_streamable ;
 int archive_set_error (int *,int ,char*) ;
 scalar_t__ calloc (int,int) ;
 int free (struct zip*) ;
 int real_crc32 ;

int
archive_read_support_format_zip_streamable(struct archive *_a)
{
 struct archive_read *a = (struct archive_read *)_a;
 struct zip *zip;
 int r;

 archive_check_magic(_a, ARCHIVE_READ_MAGIC,
     ARCHIVE_STATE_NEW, "archive_read_support_format_zip");

 zip = (struct zip *)calloc(1, sizeof(*zip));
 if (zip == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate zip data");
  return (ARCHIVE_FATAL);
 }


 zip->process_mac_extensions = 0;





 zip->has_encrypted_entries = ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW;
 zip->crc32func = real_crc32;

 r = __archive_read_register_format(a,
     zip,
     "zip",
     archive_read_format_zip_streamable_bid,
     archive_read_format_zip_options,
     archive_read_format_zip_streamable_read_header,
     archive_read_format_zip_read_data,
     archive_read_format_zip_read_data_skip_streamable,
     ((void*)0),
     archive_read_format_zip_cleanup,
     archive_read_support_format_zip_capabilities_streamable,
     archive_read_format_zip_has_encrypted_entries);

 if (r != ARCHIVE_OK)
  free(zip);
 return (ARCHIVE_OK);
}
