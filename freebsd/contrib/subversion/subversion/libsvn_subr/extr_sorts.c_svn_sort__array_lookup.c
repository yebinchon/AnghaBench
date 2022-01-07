
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int apr_size_t ;
struct TYPE_3__ {int nelts; int elt_size; void const* elts; } ;
typedef TYPE_1__ apr_array_header_t ;


 int bsearch_lower_bound (void const*,void*,int,int,int (*) (void const*,void const*)) ;

void *
svn_sort__array_lookup(const apr_array_header_t *array,
                       const void *key,
                       int *hint,
                       int (*compare_func)(const void *, const void *))
{
  void *result;
  int idx;



  if (hint)
    {


      idx = *hint + 1;
      if (idx >= array->nelts)
        {




          apr_size_t offset;

          *hint = array->nelts;
          if (array->nelts == 0)
            return ((void*)0);

          offset = (array->nelts - 1) * array->elt_size;
          if (compare_func(array->elts + offset, key) < 0)
            return ((void*)0);
        }
      else if (idx > 0)
        {



          void *previous;

          *hint = idx;
          previous = array->elts + (idx-1) * array->elt_size;
          result = array->elts + idx * array->elt_size;
          if (compare_func(previous, key) && !compare_func(result, key))
            return result;
        }
      else if (idx <= 0)
        {


          *hint = 0;
          if (!compare_func(array->elts, key))
            return array->elts;
        }


    }

  idx = bsearch_lower_bound(key, array->elts, array->nelts, array->elt_size,
                            compare_func);
  if (hint)
    *hint = idx;
  if (idx >= array->nelts)
    return ((void*)0);

  result = array->elts + idx * array->elt_size;
  return compare_func(result, key) ? ((void*)0) : result;
}
