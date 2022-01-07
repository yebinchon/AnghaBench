
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shar {int quoted_name; int work; } ;
struct TYPE_2__ {char* archive_format_name; int archive_format; } ;
struct archive_write {char* format_name; TYPE_1__ archive; int format_finish_entry; int format_write_data; int (* format_free ) (struct archive_write*) ;int format_close; int format_write_header; struct shar* format_data; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_FORMAT_SHAR_BASE ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_NEW ;
 int ARCHIVE_WRITE_MAGIC ;
 int ENOMEM ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_set_error (TYPE_1__*,int ,char*) ;
 int archive_string_init (int *) ;
 int archive_write_shar_close ;
 int archive_write_shar_data_sed ;
 int archive_write_shar_finish_entry ;
 int archive_write_shar_free (struct archive_write*) ;
 int archive_write_shar_header ;
 scalar_t__ calloc (int,int) ;
 int stub1 (struct archive_write*) ;

int
archive_write_set_format_shar(struct archive *_a)
{
 struct archive_write *a = (struct archive_write *)_a;
 struct shar *shar;

 archive_check_magic(_a, ARCHIVE_WRITE_MAGIC,
     ARCHIVE_STATE_NEW, "archive_write_set_format_shar");


 if (a->format_free != ((void*)0))
  (a->format_free)(a);

 shar = (struct shar *)calloc(1, sizeof(*shar));
 if (shar == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM, "Can't allocate shar data");
  return (ARCHIVE_FATAL);
 }
 archive_string_init(&shar->work);
 archive_string_init(&shar->quoted_name);
 a->format_data = shar;
 a->format_name = "shar";
 a->format_write_header = archive_write_shar_header;
 a->format_close = archive_write_shar_close;
 a->format_free = archive_write_shar_free;
 a->format_write_data = archive_write_shar_data_sed;
 a->format_finish_entry = archive_write_shar_finish_entry;
 a->archive.archive_format = ARCHIVE_FORMAT_SHAR_BASE;
 a->archive.archive_format_name = "shar";
 return (ARCHIVE_OK);
}
