
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int archive; } ;
struct archive {int dummy; } ;
struct _7zip {int has_encrypted_entries; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW ;
 int ARCHIVE_READ_MAGIC ;
 int ARCHIVE_STATE_NEW ;
 int ENOMEM ;
 int __archive_read_register_format (struct archive_read*,struct _7zip*,char*,int ,int *,int ,int ,int ,int *,int ,int ,int ) ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_read_format_7zip_bid ;
 int archive_read_format_7zip_cleanup ;
 int archive_read_format_7zip_has_encrypted_entries ;
 int archive_read_format_7zip_read_data ;
 int archive_read_format_7zip_read_data_skip ;
 int archive_read_format_7zip_read_header ;
 int archive_read_support_format_7zip_capabilities ;
 int archive_set_error (int *,int ,char*) ;
 struct _7zip* calloc (int,int) ;
 int free (struct _7zip*) ;

int
archive_read_support_format_7zip(struct archive *_a)
{
 struct archive_read *a = (struct archive_read *)_a;
 struct _7zip *zip;
 int r;

 archive_check_magic(_a, ARCHIVE_READ_MAGIC,
     ARCHIVE_STATE_NEW, "archive_read_support_format_7zip");

 zip = calloc(1, sizeof(*zip));
 if (zip == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate 7zip data");
  return (ARCHIVE_FATAL);
 }





 zip->has_encrypted_entries = ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW;


 r = __archive_read_register_format(a,
     zip,
     "7zip",
     archive_read_format_7zip_bid,
     ((void*)0),
     archive_read_format_7zip_read_header,
     archive_read_format_7zip_read_data,
     archive_read_format_7zip_read_data_skip,
     ((void*)0),
     archive_read_format_7zip_cleanup,
     archive_read_support_format_7zip_capabilities,
     archive_read_format_7zip_has_encrypted_entries);

 if (r != ARCHIVE_OK)
  free(zip);
 return (ARCHIVE_OK);
}
