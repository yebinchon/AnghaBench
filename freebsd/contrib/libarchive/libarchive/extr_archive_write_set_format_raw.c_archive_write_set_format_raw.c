
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct raw {scalar_t__ entries_written; } ;
struct TYPE_2__ {char* archive_format_name; int archive_format; } ;
struct archive_write {char* format_name; TYPE_1__ archive; int (* format_free ) (struct archive_write*) ;int * format_close; int * format_finish_entry; int format_write_data; int format_write_header; int * format_options; struct raw* format_data; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_FORMAT_RAW ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_NEW ;
 int ARCHIVE_WRITE_MAGIC ;
 int ENOMEM ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_set_error (TYPE_1__*,int ,char*) ;
 int archive_write_raw_data ;
 int archive_write_raw_free (struct archive_write*) ;
 int archive_write_raw_header ;
 scalar_t__ calloc (int,int) ;
 int stub1 (struct archive_write*) ;

int
archive_write_set_format_raw(struct archive *_a)
{
 struct archive_write *a = (struct archive_write *)_a;
 struct raw *raw;

 archive_check_magic(_a, ARCHIVE_WRITE_MAGIC,
     ARCHIVE_STATE_NEW, "archive_write_set_format_raw");


 if (a->format_free != ((void*)0))
  (a->format_free)(a);

 raw = (struct raw *)calloc(1, sizeof(*raw));
 if (raw == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM, "Can't allocate raw data");
  return (ARCHIVE_FATAL);
 }
 raw->entries_written = 0;
 a->format_data = raw;
 a->format_name = "raw";

 a->format_options = ((void*)0);
 a->format_write_header = archive_write_raw_header;
 a->format_write_data = archive_write_raw_data;
 a->format_finish_entry = ((void*)0);

 a->format_close = ((void*)0);
 a->format_free = archive_write_raw_free;
 a->archive.archive_format = ARCHIVE_FORMAT_RAW;
 a->archive.archive_format_name = "RAW";
 return (ARCHIVE_OK);
}
