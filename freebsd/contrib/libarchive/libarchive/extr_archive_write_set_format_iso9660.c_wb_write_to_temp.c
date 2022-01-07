
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iso9660 {size_t wbuff_offset; } ;
struct archive_write {scalar_t__ format_data; } ;


 int ARCHIVE_FATAL ;
 scalar_t__ ARCHIVE_OK ;
 size_t LOGICAL_BLOCK_SIZE ;
 int memcpy (int ,char const*,size_t) ;
 size_t wb_buffmax () ;
 int wb_buffptr (struct archive_write*) ;
 scalar_t__ wb_consume (struct archive_write*,size_t) ;
 size_t wb_remaining (struct archive_write*) ;
 scalar_t__ write_to_temp (struct archive_write*,void const*,size_t) ;

__attribute__((used)) static int
wb_write_to_temp(struct archive_write *a, const void *buff, size_t s)
{
 const char *xp = buff;
 size_t xs = s;






 if (wb_remaining(a) == wb_buffmax() && s > (1024 * 16)) {
  struct iso9660 *iso9660 = (struct iso9660 *)a->format_data;
  xs = s % LOGICAL_BLOCK_SIZE;
  iso9660->wbuff_offset += s - xs;
  if (write_to_temp(a, buff, s - xs) != ARCHIVE_OK)
   return (ARCHIVE_FATAL);
  if (xs == 0)
   return (ARCHIVE_OK);
  xp += s - xs;
 }

 while (xs) {
  size_t size = xs;
  if (size > wb_remaining(a))
   size = wb_remaining(a);
  memcpy(wb_buffptr(a), xp, size);
  if (wb_consume(a, size) != ARCHIVE_OK)
   return (ARCHIVE_FATAL);
  xs -= size;
  xp += size;
 }
 return (ARCHIVE_OK);
}
