
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {size_t null_length; int nulls; } ;


 int ARCHIVE_OK ;
 int __archive_write_output (struct archive_write*,int ,size_t) ;

int
__archive_write_nulls(struct archive_write *a, size_t length)
{
 if (length == 0)
  return (ARCHIVE_OK);

 while (length > 0) {
  size_t to_write = length < a->null_length ? length : a->null_length;
  int r = __archive_write_output(a, a->nulls, to_write);
  if (r < ARCHIVE_OK)
   return (r);
  length -= to_write;
 }
 return (ARCHIVE_OK);
}
