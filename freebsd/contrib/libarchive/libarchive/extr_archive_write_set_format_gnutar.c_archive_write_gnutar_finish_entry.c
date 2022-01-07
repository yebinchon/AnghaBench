
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gnutar {scalar_t__ entry_padding; scalar_t__ entry_bytes_remaining; } ;
struct archive_write {scalar_t__ format_data; } ;


 int __archive_write_nulls (struct archive_write*,size_t) ;

__attribute__((used)) static int
archive_write_gnutar_finish_entry(struct archive_write *a)
{
 struct gnutar *gnutar;
 int ret;

 gnutar = (struct gnutar *)a->format_data;
 ret = __archive_write_nulls(a, (size_t)
     (gnutar->entry_bytes_remaining + gnutar->entry_padding));
 gnutar->entry_bytes_remaining = gnutar->entry_padding = 0;
 return (ret);
}
