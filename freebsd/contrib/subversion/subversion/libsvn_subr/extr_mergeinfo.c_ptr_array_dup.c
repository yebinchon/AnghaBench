
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int apr_pool_t ;
struct TYPE_5__ {size_t nelts; scalar_t__ elts; } ;
typedef TYPE_1__ apr_array_header_t ;


 TYPE_1__* apr_array_make (int *,size_t,int) ;
 char* apr_palloc (int *,size_t) ;
 int memcpy (void*,void*,size_t) ;

__attribute__((used)) static apr_array_header_t *
ptr_array_dup(const apr_array_header_t *array,
              size_t object_size,
              apr_pool_t *pool)
{
  apr_array_header_t *new_array = apr_array_make(pool, array->nelts,
                                                 sizeof(void *));


  char *copy = apr_palloc(pool, object_size * array->nelts);


  void **source = (void **)(array->elts);
  void **target = (void **)(new_array->elts);
  int i;


  for (i = 0; i < array->nelts; i++)
    {
      target[i] = &copy[i * object_size];
      memcpy(target[i], source[i], object_size);
    }
  new_array->nelts = array->nelts;

  return new_array;
}
