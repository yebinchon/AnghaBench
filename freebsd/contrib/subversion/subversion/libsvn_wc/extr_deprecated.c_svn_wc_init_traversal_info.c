
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* depths; void* externals_new; void* externals_old; int * pool; } ;
typedef TYPE_1__ svn_wc_traversal_info_t ;
typedef int apr_pool_t ;


 void* apr_hash_make (int *) ;
 TYPE_1__* apr_palloc (int *,int) ;

svn_wc_traversal_info_t *
svn_wc_init_traversal_info(apr_pool_t *pool)
{
  svn_wc_traversal_info_t *ti = apr_palloc(pool, sizeof(*ti));

  ti->pool = pool;
  ti->externals_old = apr_hash_make(pool);
  ti->externals_new = apr_hash_make(pool);
  ti->depths = apr_hash_make(pool);

  return ti;
}
