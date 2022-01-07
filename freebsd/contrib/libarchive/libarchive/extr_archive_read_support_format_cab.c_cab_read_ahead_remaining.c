
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int dummy; } ;
typedef int ssize_t ;


 void* __archive_read_ahead (struct archive_read*,size_t,int *) ;

__attribute__((used)) static const void *
cab_read_ahead_remaining(struct archive_read *a, size_t min, ssize_t *avail)
{
 const void *p;

 while (min > 0) {
  p = __archive_read_ahead(a, min, avail);
  if (p != ((void*)0))
   return (p);
  min--;
 }
 return (((void*)0));
}
