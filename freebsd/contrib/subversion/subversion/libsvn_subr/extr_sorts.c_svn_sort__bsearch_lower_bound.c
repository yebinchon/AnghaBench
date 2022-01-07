
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int elt_size; int nelts; int elts; } ;
typedef TYPE_1__ apr_array_header_t ;


 int bsearch_lower_bound (void const*,int ,int ,int ,int (*) (void const*,void const*)) ;

int
svn_sort__bsearch_lower_bound(const apr_array_header_t *array,
                              const void *key,
                              int (*compare_func)(const void *, const void *))
{
  return bsearch_lower_bound(key,
                             array->elts, array->nelts, array->elt_size,
                             compare_func);
}
