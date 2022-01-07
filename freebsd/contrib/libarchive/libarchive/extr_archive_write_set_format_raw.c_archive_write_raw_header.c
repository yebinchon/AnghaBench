
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw {scalar_t__ entries_written; } ;
struct archive_write {int archive; scalar_t__ format_data; } ;
struct archive_entry {int dummy; } ;


 scalar_t__ AE_IFREG ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ERANGE ;
 scalar_t__ archive_entry_filetype (struct archive_entry*) ;
 int archive_set_error (int *,int ,char*) ;

__attribute__((used)) static int
archive_write_raw_header(struct archive_write *a, struct archive_entry *entry)
{
 struct raw *raw = (struct raw *)a->format_data;

 if (archive_entry_filetype(entry) != AE_IFREG) {
  archive_set_error(&a->archive, ERANGE,
      "Raw format only supports filetype AE_IFREG");
  return (ARCHIVE_FATAL);
 }


 if (raw->entries_written > 0) {
  archive_set_error(&a->archive, ERANGE,
      "Raw format only supports one entry per archive");
  return (ARCHIVE_FATAL);
 }
 raw->entries_written++;

 return (ARCHIVE_OK);
}
