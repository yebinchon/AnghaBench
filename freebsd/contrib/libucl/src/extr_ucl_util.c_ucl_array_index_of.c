
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ucl_object_t ;
struct TYPE_4__ {unsigned int n; } ;


 int UCL_ARRAY_GET (TYPE_1__*,int *) ;
 int * kv_A (TYPE_1__,unsigned int) ;
 TYPE_1__* vec ;

unsigned int
ucl_array_index_of (ucl_object_t *top, ucl_object_t *elt)
{
 UCL_ARRAY_GET (vec, top);
 unsigned i;

 if (vec == ((void*)0)) {
  return (unsigned int)(-1);
 }

 for (i = 0; i < vec->n; i ++) {
  if (kv_A (*vec, i) == elt) {
   return i;
  }
 }

 return (unsigned int)(-1);
}
