
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nelts; int elt_size; scalar_t__ elts; } ;
typedef TYPE_1__ apr_array_header_t ;


 int memmove (scalar_t__,scalar_t__,int) ;

void
svn_sort__array_delete(apr_array_header_t *arr,
                       int delete_index,
                       int elements_to_delete)
{

  if (delete_index >= 0
      && delete_index < arr->nelts
      && elements_to_delete > 0
      && (arr->nelts - delete_index) >= elements_to_delete)
    {



      if ((elements_to_delete + delete_index) < arr->nelts)
        memmove(
          arr->elts + arr->elt_size * delete_index,
          arr->elts + (arr->elt_size * (delete_index + elements_to_delete)),
          arr->elt_size * (arr->nelts - elements_to_delete - delete_index));


      arr->nelts -= elements_to_delete;
    }
}
