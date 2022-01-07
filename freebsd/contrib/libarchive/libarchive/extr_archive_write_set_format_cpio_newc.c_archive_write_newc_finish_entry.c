
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpio {scalar_t__ padding; scalar_t__ entry_bytes_remaining; } ;
struct archive_write {scalar_t__ format_data; } ;


 int __archive_write_nulls (struct archive_write*,scalar_t__) ;

__attribute__((used)) static int
archive_write_newc_finish_entry(struct archive_write *a)
{
 struct cpio *cpio;

 cpio = (struct cpio *)a->format_data;
 return (__archive_write_nulls(a,
  (size_t)cpio->entry_bytes_remaining + cpio->padding));
}
