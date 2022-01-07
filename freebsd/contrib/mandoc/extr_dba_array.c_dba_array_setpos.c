
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dba_array {size_t* em; } ;
typedef size_t int32_t ;



void
dba_array_setpos(struct dba_array *array, int32_t ie, int32_t pos)
{
 array->em[ie] = pos;
}
