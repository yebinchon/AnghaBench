
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ node_status; int depth; int file_external; scalar_t__ switched; } ;
typedef TYPE_1__ svn_wc_status3_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef scalar_t__ svn_boolean_t ;
struct pre_merge_status_baton_t {int missing_subtrees; int shallow_subtrees; int pool; int switched_subtrees; } ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 scalar_t__ FALSE ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int * apr_pmemdup (int ,int *,int) ;
 char* apr_pstrdup (int ,char const*) ;
 int store_path (int ,char const*) ;
 int svn_depth_empty ;
 int svn_depth_files ;
 scalar_t__ svn_dirent_is_ancestor (char const*,char const*) ;
 int svn_hash_sets (int ,char const*,int *) ;
 scalar_t__ svn_wc_status_missing ;

__attribute__((used)) static svn_error_t *
pre_merge_status_cb(void *baton,
                    const char *local_abspath,
                    const svn_wc_status3_t *status,
                    apr_pool_t *scratch_pool)
{
  struct pre_merge_status_baton_t *pmsb = baton;

  if (status->switched && !status->file_external)
    {
      store_path(pmsb->switched_subtrees, local_abspath);
    }

  if (status->depth == svn_depth_empty
      || status->depth == svn_depth_files)
    {
      const char *dup_abspath;
      svn_depth_t *depth = apr_pmemdup(pmsb->pool, &status->depth,
                                       sizeof *depth);

      dup_abspath = apr_pstrdup(pmsb->pool, local_abspath);

      svn_hash_sets(pmsb->shallow_subtrees, dup_abspath, depth);
    }

  if (status->node_status == svn_wc_status_missing)
    {
      svn_boolean_t new_missing_root = TRUE;
      apr_hash_index_t *hi;

      for (hi = apr_hash_first(scratch_pool, pmsb->missing_subtrees);
           hi;
           hi = apr_hash_next(hi))
        {
          const char *missing_root_path = apr_hash_this_key(hi);

          if (svn_dirent_is_ancestor(missing_root_path,
                                     local_abspath))
            {
              new_missing_root = FALSE;
              break;
            }
        }

      if (new_missing_root)
        store_path(pmsb->missing_subtrees, local_abspath);
    }

  return SVN_NO_ERROR;
}
