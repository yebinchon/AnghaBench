
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iso9660 {unsigned char* wbuff; int wbuff_remaining; } ;
struct archive_write {scalar_t__ format_data; } ;



__attribute__((used)) static inline unsigned char *
wb_buffptr(struct archive_write *a)
{
 struct iso9660 *iso9660 = (struct iso9660 *)a->format_data;

 return (&(iso9660->wbuff[sizeof(iso9660->wbuff)
  - iso9660->wbuff_remaining]));
}
