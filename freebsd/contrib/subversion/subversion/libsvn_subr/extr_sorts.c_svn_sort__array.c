
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int elt_size; int nelts; int elts; } ;
typedef TYPE_1__ apr_array_header_t ;


 int qsort (int ,int ,int ,int (*) (void const*,void const*)) ;

void
svn_sort__array(apr_array_header_t *array,
                int (*comparison_func)(const void *,
                                       const void *))
{
  qsort(array->elts, array->nelts, array->elt_size, comparison_func);
}
