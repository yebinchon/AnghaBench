
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {char* format_name; int format_finish_entry; int (* format_free ) (struct archive_write*) ;int format_close; int format_write_data; int format_write_header; struct ar_w* format_data; int archive; } ;
struct ar_w {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ENOMEM ;
 int archive_set_error (int *,int ,char*) ;
 int archive_write_ar_close ;
 int archive_write_ar_data ;
 int archive_write_ar_finish_entry ;
 int archive_write_ar_free (struct archive_write*) ;
 int archive_write_ar_header ;
 scalar_t__ calloc (int,int) ;
 int stub1 (struct archive_write*) ;

__attribute__((used)) static int
archive_write_set_format_ar(struct archive_write *a)
{
 struct ar_w *ar;


 if (a->format_free != ((void*)0))
  (a->format_free)(a);

 ar = (struct ar_w *)calloc(1, sizeof(*ar));
 if (ar == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM, "Can't allocate ar data");
  return (ARCHIVE_FATAL);
 }
 a->format_data = ar;

 a->format_name = "ar";
 a->format_write_header = archive_write_ar_header;
 a->format_write_data = archive_write_ar_data;
 a->format_close = archive_write_ar_close;
 a->format_free = archive_write_ar_free;
 a->format_finish_entry = archive_write_ar_finish_entry;
 return (ARCHIVE_OK);
}
