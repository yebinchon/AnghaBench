
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_wc_adm_access_t ;
struct TYPE_6__ {int len; int data; } ;
typedef TYPE_2__ svn_string_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
struct traversal_info_update_baton {TYPE_1__* traversal; int db; } ;
typedef int apr_pool_t ;
struct TYPE_5__ {int depths; int externals_new; int externals_old; int * pool; } ;


 int * SVN_NO_ERROR ;
 char* apr_pstrdup (int *,char const*) ;
 char* apr_pstrmemdup (int *,int ,int ) ;
 char const* svn_depth_to_word (int ) ;
 int svn_hash_sets (int ,char const*,char const*) ;
 int * svn_wc__adm_retrieve_internal2 (int ,char const*,int *) ;
 char const* svn_wc_adm_access_path (int *) ;

__attribute__((used)) static svn_error_t *
traversal_info_update(void *baton,
                      const char *local_abspath,
                      const svn_string_t *old_val,
                      const svn_string_t *new_val,
                      svn_depth_t depth,
                      apr_pool_t *scratch_pool)
{
  const char *dup_path;
  svn_wc_adm_access_t *adm_access;
  struct traversal_info_update_baton *ub = baton;
  apr_pool_t *dup_pool = ub->traversal->pool;
  const char *dup_val = ((void*)0);



  adm_access = svn_wc__adm_retrieve_internal2(ub->db, local_abspath,
                                              scratch_pool);

  if (adm_access)
    dup_path = apr_pstrdup(dup_pool, svn_wc_adm_access_path(adm_access));
  else
    dup_path = apr_pstrdup(dup_pool, local_abspath);

  if (old_val)
    {
      dup_val = apr_pstrmemdup(dup_pool, old_val->data, old_val->len);

      svn_hash_sets(ub->traversal->externals_old, dup_path, dup_val);
    }

  if (new_val)
    {

      if (old_val != new_val)
        dup_val = apr_pstrmemdup(dup_pool, new_val->data, new_val->len);

      svn_hash_sets(ub->traversal->externals_new, dup_path, dup_val);
    }

  svn_hash_sets(ub->traversal->depths, dup_path, svn_depth_to_word(depth));

  return SVN_NO_ERROR;
}
