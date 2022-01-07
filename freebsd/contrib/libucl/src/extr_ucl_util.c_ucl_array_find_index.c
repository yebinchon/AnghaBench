
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ucl_object_t ;
struct TYPE_4__ {unsigned int n; } ;


 int UCL_ARRAY_GET (TYPE_1__*,int const*) ;
 int const* kv_A (TYPE_1__,unsigned int) ;
 TYPE_1__* vec ;

const ucl_object_t *
ucl_array_find_index (const ucl_object_t *top, unsigned int index)
{
 UCL_ARRAY_GET (vec, top);

 if (vec != ((void*)0) && vec->n > 0 && index < vec->n) {
  return kv_A (*vec, index);
 }

 return ((void*)0);
}
