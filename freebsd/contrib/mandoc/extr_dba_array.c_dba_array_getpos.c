
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dba_array {int pos; } ;
typedef int int32_t ;



int32_t
dba_array_getpos(struct dba_array *array)
{
 return array->pos;
}
