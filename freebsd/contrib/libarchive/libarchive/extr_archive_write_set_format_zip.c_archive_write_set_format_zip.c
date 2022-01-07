
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zip {int len_buf; int * buf; int crc32func; int deflate_compression_level; int requested_compression; } ;
struct TYPE_2__ {char* archive_format_name; int archive_format; } ;
struct archive_write {char* format_name; TYPE_1__ archive; int (* format_free ) (struct archive_write*) ;int format_close; int format_finish_entry; int format_write_data; int format_write_header; int format_options; struct zip* format_data; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_FORMAT_ZIP ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_NEW ;
 int ARCHIVE_WRITE_MAGIC ;
 int COMPRESSION_UNSPECIFIED ;
 int ENOMEM ;
 int Z_DEFAULT_COMPRESSION ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_set_error (TYPE_1__*,int ,char*) ;
 int archive_write_zip_close ;
 int archive_write_zip_data ;
 int archive_write_zip_finish_entry ;
 int archive_write_zip_free (struct archive_write*) ;
 int archive_write_zip_header ;
 int archive_write_zip_options ;
 scalar_t__ calloc (int,int) ;
 int free (struct zip*) ;
 int * malloc (int) ;
 int real_crc32 ;
 int stub1 (struct archive_write*) ;

int
archive_write_set_format_zip(struct archive *_a)
{
 struct archive_write *a = (struct archive_write *)_a;
 struct zip *zip;

 archive_check_magic(_a, ARCHIVE_WRITE_MAGIC,
     ARCHIVE_STATE_NEW, "archive_write_set_format_zip");


 if (a->format_free != ((void*)0))
  (a->format_free)(a);

 zip = (struct zip *) calloc(1, sizeof(*zip));
 if (zip == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate zip data");
  return (ARCHIVE_FATAL);
 }


 zip->requested_compression = COMPRESSION_UNSPECIFIED;



 zip->crc32func = real_crc32;


 zip->len_buf = 65536;
 zip->buf = malloc(zip->len_buf);
 if (zip->buf == ((void*)0)) {
  free(zip);
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate compression buffer");
  return (ARCHIVE_FATAL);
 }

 a->format_data = zip;
 a->format_name = "zip";
 a->format_options = archive_write_zip_options;
 a->format_write_header = archive_write_zip_header;
 a->format_write_data = archive_write_zip_data;
 a->format_finish_entry = archive_write_zip_finish_entry;
 a->format_close = archive_write_zip_close;
 a->format_free = archive_write_zip_free;
 a->archive.archive_format = ARCHIVE_FORMAT_ZIP;
 a->archive.archive_format_name = "ZIP";

 return (ARCHIVE_OK);
}
