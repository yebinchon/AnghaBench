
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int access_cache; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
struct TYPE_6__ {int dir_data; } ;
typedef TYPE_2__ svn_wc__db_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int * apr_hash_first (int *,int ) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 int * apr_hash_overlay (int *,int *,int ) ;
 TYPE_1__* apr_hash_this_val (int *) ;

apr_hash_t *
svn_wc__db_temp_get_all_access(svn_wc__db_t *db,
                               apr_pool_t *result_pool)
{
  apr_hash_t *result = apr_hash_make(result_pool);
  apr_hash_index_t *hi;

  for (hi = apr_hash_first(result_pool, db->dir_data);
       hi;
       hi = apr_hash_next(hi))
    {
      const svn_wc__db_wcroot_t *wcroot = apr_hash_this_val(hi);



      result = apr_hash_overlay(result_pool, result, wcroot->access_cache);
    }

  return result;
}
