
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * free_list; int * pool; int * tree; } ;
typedef TYPE_1__ range_index_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;

__attribute__((used)) static range_index_t *
create_range_index(apr_pool_t *pool)
{
  range_index_t *ndx = apr_palloc(pool, sizeof(*ndx));
  ndx->tree = ((void*)0);
  ndx->pool = pool;
  ndx->free_list = ((void*)0);
  return ndx;
}
