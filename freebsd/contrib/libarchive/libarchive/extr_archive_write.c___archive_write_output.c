
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {int filter_first; } ;


 int __archive_write_filter (int ,void const*,size_t) ;

int
__archive_write_output(struct archive_write *a, const void *buff, size_t length)
{
 return (__archive_write_filter(a->filter_first, buff, length));
}
