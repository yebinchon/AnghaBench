
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_fs_root_t ;
struct TYPE_5__ {int prop_mod; int text_mod; int change_kind; int node_rev_id; } ;
typedef TYPE_1__ svn_fs_path_change_t ;
struct TYPE_6__ {int prop_mod; int text_mod; int change_kind; int node_rev_id; } ;
typedef TYPE_2__ svn_fs_path_change2_t ;
typedef int svn_error_t ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_set (int *,void const*,int ,TYPE_1__*) ;
 int apr_hash_this (int *,void const**,int *,void**) ;
 TYPE_1__* apr_palloc (int *,int) ;
 int svn_fs_paths_changed2 (int **,int *,int *) ;

svn_error_t *
svn_fs_paths_changed(apr_hash_t **changed_paths_p, svn_fs_root_t *root,
                     apr_pool_t *pool)
{
  apr_hash_t *changed_paths_new_structs;
  apr_hash_index_t *hi;

  SVN_ERR(svn_fs_paths_changed2(&changed_paths_new_structs, root, pool));
  *changed_paths_p = apr_hash_make(pool);
  for (hi = apr_hash_first(pool, changed_paths_new_structs);
       hi;
       hi = apr_hash_next(hi))
    {
      const void *vkey;
      apr_ssize_t klen;
      void *vval;
      svn_fs_path_change2_t *val;
      svn_fs_path_change_t *change;
      apr_hash_this(hi, &vkey, &klen, &vval);
      val = vval;
      change = apr_palloc(pool, sizeof(*change));
      change->node_rev_id = val->node_rev_id;
      change->change_kind = val->change_kind;
      change->text_mod = val->text_mod;
      change->prop_mod = val->prop_mod;
      apr_hash_set(*changed_paths_p, vkey, klen, change);
    }
  return SVN_NO_ERROR;
}
