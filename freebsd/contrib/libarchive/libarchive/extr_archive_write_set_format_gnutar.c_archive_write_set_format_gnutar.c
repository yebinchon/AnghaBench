
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gnutar {int dummy; } ;
struct TYPE_2__ {char* archive_format_name; int archive_format; } ;
struct archive_write {char* format_name; TYPE_1__ archive; int format_finish_entry; int format_free; int format_close; int format_write_data; int format_write_header; int format_options; struct gnutar* format_data; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_FORMAT_TAR_GNUTAR ;
 int ARCHIVE_OK ;
 int ENOMEM ;
 int archive_set_error (TYPE_1__*,int ,char*) ;
 int archive_write_gnutar_close ;
 int archive_write_gnutar_data ;
 int archive_write_gnutar_finish_entry ;
 int archive_write_gnutar_free ;
 int archive_write_gnutar_header ;
 int archive_write_gnutar_options ;
 scalar_t__ calloc (int,int) ;

int
archive_write_set_format_gnutar(struct archive *_a)
{
 struct archive_write *a = (struct archive_write *)_a;
 struct gnutar *gnutar;

 gnutar = (struct gnutar *)calloc(1, sizeof(*gnutar));
 if (gnutar == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate gnutar data");
  return (ARCHIVE_FATAL);
 }
 a->format_data = gnutar;
 a->format_name = "gnutar";
 a->format_options = archive_write_gnutar_options;
 a->format_write_header = archive_write_gnutar_header;
 a->format_write_data = archive_write_gnutar_data;
 a->format_close = archive_write_gnutar_close;
 a->format_free = archive_write_gnutar_free;
 a->format_finish_entry = archive_write_gnutar_finish_entry;
 a->archive.archive_format = ARCHIVE_FORMAT_TAR_GNUTAR;
 a->archive.archive_format_name = "GNU tar";
 return (ARCHIVE_OK);
}
