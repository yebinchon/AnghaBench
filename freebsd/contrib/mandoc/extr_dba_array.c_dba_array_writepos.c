
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dba_array {size_t eu; int* em; int pos; } ;
typedef size_t int32_t ;


 int dba_int_write (int) ;
 int dba_tell () ;

void
dba_array_writepos(struct dba_array *array)
{
 int32_t ie;

 array->pos = dba_tell();
 for (ie = 0; ie < array->eu; ie++)
  if (array->em[ie] != -1)
   dba_int_write(array->em[ie]);
}
