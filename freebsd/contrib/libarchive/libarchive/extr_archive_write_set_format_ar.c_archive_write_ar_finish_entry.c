
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct archive_write {int archive; scalar_t__ format_data; } ;
struct ar_w {scalar_t__ entry_bytes_remaining; int entry_padding; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int __archive_write_output (struct archive_write*,char*,int) ;
 int archive_set_error (int *,int ,char*,...) ;

__attribute__((used)) static int
archive_write_ar_finish_entry(struct archive_write *a)
{
 struct ar_w *ar;
 int ret;

 ar = (struct ar_w *)a->format_data;

 if (ar->entry_bytes_remaining != 0) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "Entry remaining bytes larger than 0");
  return (ARCHIVE_WARN);
 }

 if (ar->entry_padding == 0) {
  return (ARCHIVE_OK);
 }

 if (ar->entry_padding != 1) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "Padding wrong size: %ju should be 1 or 0",
      (uintmax_t)ar->entry_padding);
  return (ARCHIVE_WARN);
 }

 ret = __archive_write_output(a, "\n", 1);
 return (ret);
}
