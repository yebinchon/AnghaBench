
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpio {int dummy; } ;
struct TYPE_2__ {char* archive_format_name; int archive_format; } ;
struct archive_write {char* format_name; TYPE_1__ archive; int (* format_free ) (struct archive_write*) ;int format_close; int format_finish_entry; int format_write_data; int format_write_header; int format_options; struct cpio* format_data; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_FORMAT_CPIO_POSIX ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_NEW ;
 int ARCHIVE_WRITE_MAGIC ;
 int ENOMEM ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_set_error (TYPE_1__*,int ,char*) ;
 int archive_write_cpio_close ;
 int archive_write_cpio_data ;
 int archive_write_cpio_finish_entry ;
 int archive_write_cpio_free (struct archive_write*) ;
 int archive_write_cpio_header ;
 int archive_write_cpio_options ;
 scalar_t__ calloc (int,int) ;
 int stub1 (struct archive_write*) ;

int
archive_write_set_format_cpio(struct archive *_a)
{
 struct archive_write *a = (struct archive_write *)_a;
 struct cpio *cpio;

 archive_check_magic(_a, ARCHIVE_WRITE_MAGIC,
     ARCHIVE_STATE_NEW, "archive_write_set_format_cpio");


 if (a->format_free != ((void*)0))
  (a->format_free)(a);

 cpio = (struct cpio *)calloc(1, sizeof(*cpio));
 if (cpio == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM, "Can't allocate cpio data");
  return (ARCHIVE_FATAL);
 }
 a->format_data = cpio;
 a->format_name = "cpio";
 a->format_options = archive_write_cpio_options;
 a->format_write_header = archive_write_cpio_header;
 a->format_write_data = archive_write_cpio_data;
 a->format_finish_entry = archive_write_cpio_finish_entry;
 a->format_close = archive_write_cpio_close;
 a->format_free = archive_write_cpio_free;
 a->archive.archive_format = ARCHIVE_FORMAT_CPIO_POSIX;
 a->archive.archive_format_name = "POSIX cpio";
 return (ARCHIVE_OK);
}
