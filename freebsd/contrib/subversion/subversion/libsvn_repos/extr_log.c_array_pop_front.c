
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nelts; int nalloc; int elt_size; void* elts; } ;
typedef TYPE_1__ apr_array_header_t ;


 scalar_t__ apr_is_empty_array (TYPE_1__*) ;

__attribute__((used)) static void *
array_pop_front(apr_array_header_t *arr)
{
  void *item = arr->elts;

  if (apr_is_empty_array(arr))
    return ((void*)0);

  arr->elts += arr->elt_size;
  arr->nelts -= 1;
  arr->nalloc -= 1;
  return item;
}
