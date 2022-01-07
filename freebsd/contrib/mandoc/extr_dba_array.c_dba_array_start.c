
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dba_array {int eu; int ec; } ;



void
dba_array_start(struct dba_array *array)
{
 array->ec = array->eu;
}
