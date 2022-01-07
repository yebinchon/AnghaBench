
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pax {int flags; } ;
struct TYPE_2__ {char* archive_format_name; int archive_format; } ;
struct archive_write {char* format_name; TYPE_1__ archive; int format_finish_entry; int (* format_free ) (struct archive_write*) ;int format_close; int format_write_data; int format_write_header; int format_options; struct pax* format_data; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_NEW ;
 int ARCHIVE_WRITE_MAGIC ;
 int ENOMEM ;
 int WRITE_LIBARCHIVE_XATTR ;
 int WRITE_SCHILY_XATTR ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_set_error (TYPE_1__*,int ,char*) ;
 int archive_write_pax_close ;
 int archive_write_pax_data ;
 int archive_write_pax_finish_entry ;
 int archive_write_pax_free (struct archive_write*) ;
 int archive_write_pax_header ;
 int archive_write_pax_options ;
 scalar_t__ calloc (int,int) ;
 int stub1 (struct archive_write*) ;

int
archive_write_set_format_pax(struct archive *_a)
{
 struct archive_write *a = (struct archive_write *)_a;
 struct pax *pax;

 archive_check_magic(_a, ARCHIVE_WRITE_MAGIC,
     ARCHIVE_STATE_NEW, "archive_write_set_format_pax");

 if (a->format_free != ((void*)0))
  (a->format_free)(a);

 pax = (struct pax *)calloc(1, sizeof(*pax));
 if (pax == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate pax data");
  return (ARCHIVE_FATAL);
 }
 pax->flags = WRITE_LIBARCHIVE_XATTR | WRITE_SCHILY_XATTR;

 a->format_data = pax;
 a->format_name = "pax";
 a->format_options = archive_write_pax_options;
 a->format_write_header = archive_write_pax_header;
 a->format_write_data = archive_write_pax_data;
 a->format_close = archive_write_pax_close;
 a->format_free = archive_write_pax_free;
 a->format_finish_entry = archive_write_pax_finish_entry;
 a->archive.archive_format = ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE;
 a->archive.archive_format_name = "POSIX pax interchange";
 return (ARCHIVE_OK);
}
