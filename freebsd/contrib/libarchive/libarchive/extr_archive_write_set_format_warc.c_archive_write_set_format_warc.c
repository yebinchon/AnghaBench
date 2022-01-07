
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct warc_s {unsigned int omit_warcinfo; unsigned int rng; scalar_t__ now; scalar_t__ typ; } ;
struct TYPE_2__ {char* archive_format_name; int archive_format; } ;
struct archive_write {char* format_name; TYPE_1__ archive; int format_finish_entry; int (* format_free ) (struct archive_write*) ;int format_close; int format_write_data; int format_write_header; int format_options; struct warc_s* format_data; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_FORMAT_WARC ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_NEW ;
 int ARCHIVE_WRITE_MAGIC ;
 int ENOMEM ;
 int _warc_close ;
 int _warc_data ;
 int _warc_finish_entry ;
 int _warc_free (struct archive_write*) ;
 int _warc_header ;
 int _warc_options ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_set_error (TYPE_1__*,int ,char*) ;
 struct warc_s* malloc (int) ;
 int stub1 (struct archive_write*) ;
 scalar_t__ time (int *) ;

int
archive_write_set_format_warc(struct archive *_a)
{
 struct archive_write *a = (struct archive_write *)_a;
 struct warc_s *w;

 archive_check_magic(_a, ARCHIVE_WRITE_MAGIC,
     ARCHIVE_STATE_NEW, "archive_write_set_format_warc");


 if (a->format_free != ((void*)0)) {
  (a->format_free)(a);
 }

 w = malloc(sizeof(*w));
 if (w == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate warc data");
  return (ARCHIVE_FATAL);
 }

 w->omit_warcinfo = 0U;

 w->now = time(((void*)0));

 w->typ = 0;

 w->rng = (unsigned int)w->now;

 a->format_data = w;
 a->format_name = "WARC/1.0";
 a->format_options = _warc_options;
 a->format_write_header = _warc_header;
 a->format_write_data = _warc_data;
 a->format_close = _warc_close;
 a->format_free = _warc_free;
 a->format_finish_entry = _warc_finish_entry;
 a->archive.archive_format = ARCHIVE_FORMAT_WARC;
 a->archive.archive_format_name = "WARC/1.0";
 return (ARCHIVE_OK);
}
