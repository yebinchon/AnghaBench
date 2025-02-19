
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gnutar {size_t entry_bytes_remaining; } ;
struct archive_write {scalar_t__ format_data; } ;
typedef int ssize_t ;


 int ARCHIVE_OK ;
 int __archive_write_output (struct archive_write*,void const*,size_t) ;

__attribute__((used)) static ssize_t
archive_write_gnutar_data(struct archive_write *a, const void *buff, size_t s)
{
 struct gnutar *gnutar;
 int ret;

 gnutar = (struct gnutar *)a->format_data;
 if (s > gnutar->entry_bytes_remaining)
  s = (size_t)gnutar->entry_bytes_remaining;
 ret = __archive_write_output(a, buff, s);
 gnutar->entry_bytes_remaining -= s;
 if (ret != ARCHIVE_OK)
  return (ret);
 return (s);
}
