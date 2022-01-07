
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int block_count; void* blocks; int * pool; } ;
typedef TYPE_1__ svn_bit_array__t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 void* apr_pcalloc (int *,int) ;
 int select_data_size (int ) ;

svn_bit_array__t *
svn_bit_array__create(apr_size_t max,
                      apr_pool_t *pool)
{
  svn_bit_array__t *array = apr_pcalloc(pool, sizeof(*array));

  array->block_count = select_data_size(max);
  array->pool = pool;
  array->blocks = apr_pcalloc(pool,
                              array->block_count * sizeof(*array->blocks));

  return array;
}
