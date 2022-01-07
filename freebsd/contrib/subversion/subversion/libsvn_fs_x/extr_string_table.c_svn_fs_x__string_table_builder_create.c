
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tables; int * pool; } ;
typedef TYPE_1__ string_table_builder_t ;
typedef int builder_table_t ;
typedef int apr_pool_t ;


 int add_table (TYPE_1__*) ;
 int apr_array_make (int *,int,int) ;
 TYPE_1__* apr_palloc (int *,int) ;

string_table_builder_t *
svn_fs_x__string_table_builder_create(apr_pool_t *result_pool)
{
  string_table_builder_t *result = apr_palloc(result_pool, sizeof(*result));
  result->pool = result_pool;
  result->tables = apr_array_make(result_pool, 1, sizeof(builder_table_t *));

  add_table(result);

  return result;
}
