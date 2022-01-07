
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iso9660 {size_t wbuff_remaining; } ;
struct archive_write {int archive; scalar_t__ format_data; } ;
typedef int intmax_t ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 size_t LOGICAL_BLOCK_SIZE ;
 int archive_set_error (int *,int ,char*,int ,int ) ;
 int wb_write_out (struct archive_write*) ;

__attribute__((used)) static int
wb_consume(struct archive_write *a, size_t size)
{
 struct iso9660 *iso9660 = (struct iso9660 *)a->format_data;

 if (size > iso9660->wbuff_remaining ||
     iso9660->wbuff_remaining == 0) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "Internal Programming error: iso9660:wb_consume()"
      " size=%jd, wbuff_remaining=%jd",
      (intmax_t)size, (intmax_t)iso9660->wbuff_remaining);
  return (ARCHIVE_FATAL);
 }
 iso9660->wbuff_remaining -= size;
 if (iso9660->wbuff_remaining < LOGICAL_BLOCK_SIZE)
  return (wb_write_out(a));
 return (ARCHIVE_OK);
}
