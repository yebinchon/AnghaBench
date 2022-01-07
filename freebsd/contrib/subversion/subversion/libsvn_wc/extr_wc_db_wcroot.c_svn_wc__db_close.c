
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char const* abspath; scalar_t__ sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
struct TYPE_7__ {int * state_pool; int * dir_data; } ;
typedef TYPE_2__ svn_wc__db_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 TYPE_1__* apr_hash_this_val (int *) ;
 int * svn_error_trace (int ) ;
 int svn_hash_sets (int *,char const*,TYPE_1__*) ;
 int svn_wc__db_close_many_wcroots (int *,int *,int *) ;

svn_error_t *
svn_wc__db_close(svn_wc__db_t *db)
{
  apr_pool_t *scratch_pool = db->state_pool;
  apr_hash_t *roots = apr_hash_make(scratch_pool);
  apr_hash_index_t *hi;


  for (hi = apr_hash_first(scratch_pool, db->dir_data);
       hi;
       hi = apr_hash_next(hi))
    {
      svn_wc__db_wcroot_t *wcroot = apr_hash_this_val(hi);
      const char *local_abspath = apr_hash_this_key(hi);

      if (wcroot->sdb)
        svn_hash_sets(roots, wcroot->abspath, wcroot);

      svn_hash_sets(db->dir_data, local_abspath, ((void*)0));
    }


  return svn_error_trace(svn_wc__db_close_many_wcroots(roots, db->state_pool,
                                                       scratch_pool));
}
