
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int template_header ;
struct v7tar {int dummy; } ;
struct TYPE_2__ {char* archive_format_name; int archive_format; } ;
struct archive_write {char* format_name; TYPE_1__ archive; int format_finish_entry; int (* format_free ) (struct archive_write*) ;int format_close; int format_write_data; int format_write_header; int format_options; struct v7tar* format_data; } ;
struct archive {int dummy; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_FORMAT_TAR ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_NEW ;
 int ARCHIVE_WRITE_MAGIC ;
 int ENOMEM ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_set_error (TYPE_1__*,int ,char*,...) ;
 int archive_write_v7tar_close ;
 int archive_write_v7tar_data ;
 int archive_write_v7tar_finish_entry ;
 int archive_write_v7tar_free (struct archive_write*) ;
 int archive_write_v7tar_header ;
 int archive_write_v7tar_options ;
 scalar_t__ calloc (int,int) ;
 int stub1 (struct archive_write*) ;

int
archive_write_set_format_v7tar(struct archive *_a)
{
 struct archive_write *a = (struct archive_write *)_a;
 struct v7tar *v7tar;

 archive_check_magic(_a, ARCHIVE_WRITE_MAGIC,
     ARCHIVE_STATE_NEW, "archive_write_set_format_v7tar");


 if (a->format_free != ((void*)0))
  (a->format_free)(a);


 if (sizeof(template_header) != 512) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "Internal: template_header wrong size: %zu should be 512",
      sizeof(template_header));
  return (ARCHIVE_FATAL);
 }

 v7tar = (struct v7tar *)calloc(1, sizeof(*v7tar));
 if (v7tar == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate v7tar data");
  return (ARCHIVE_FATAL);
 }
 a->format_data = v7tar;
 a->format_name = "tar (non-POSIX)";
 a->format_options = archive_write_v7tar_options;
 a->format_write_header = archive_write_v7tar_header;
 a->format_write_data = archive_write_v7tar_data;
 a->format_close = archive_write_v7tar_close;
 a->format_free = archive_write_v7tar_free;
 a->format_finish_entry = archive_write_v7tar_finish_entry;
 a->archive.archive_format = ARCHIVE_FORMAT_TAR;
 a->archive.archive_format_name = "tar (non-POSIX)";
 return (ARCHIVE_OK);
}
