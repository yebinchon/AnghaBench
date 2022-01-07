
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {int dummy; } ;


 int __archive_write_nulls (struct archive_write*,int) ;

__attribute__((used)) static int
archive_write_ustar_close(struct archive_write *a)
{
 return (__archive_write_nulls(a, 512*2));
}
