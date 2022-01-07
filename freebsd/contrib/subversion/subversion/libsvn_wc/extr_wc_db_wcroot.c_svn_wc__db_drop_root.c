
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int abspath; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
struct TYPE_8__ {int state_pool; int dir_data; } ;
typedef TYPE_2__ svn_wc__db_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 scalar_t__ APR_SUCCESS ;
 int SVN_ERR_WC_NOT_WORKING_COPY ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this_key (int *) ;
 TYPE_1__* apr_hash_this_val (int *) ;
 scalar_t__ apr_pool_cleanup_run (int ,TYPE_1__*,int ) ;
 int close_wcroot ;
 scalar_t__ strcmp (int ,char const*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int * svn_error_wrap_apr (scalar_t__,int *) ;
 TYPE_1__* svn_hash_gets (int ,char const*) ;
 int svn_hash_sets (int ,int ,int *) ;

svn_error_t *
svn_wc__db_drop_root(svn_wc__db_t *db,
                     const char *local_abspath,
                     apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *root_wcroot = svn_hash_gets(db->dir_data, local_abspath);
  apr_hash_index_t *hi;
  apr_status_t result;

  if (!root_wcroot)
    return SVN_NO_ERROR;

  if (strcmp(root_wcroot->abspath, local_abspath) != 0)
    return svn_error_createf(SVN_ERR_WC_NOT_WORKING_COPY, ((void*)0),
                             _("'%s' is not a working copy root"),
                             svn_dirent_local_style(local_abspath,
                                                    scratch_pool));

  for (hi = apr_hash_first(scratch_pool, db->dir_data);
       hi;
       hi = apr_hash_next(hi))
    {
      svn_wc__db_wcroot_t *wcroot = apr_hash_this_val(hi);

      if (wcroot == root_wcroot)
        svn_hash_sets(db->dir_data, apr_hash_this_key(hi), ((void*)0));
    }

  result = apr_pool_cleanup_run(db->state_pool, root_wcroot, close_wcroot);
  if (result != APR_SUCCESS)
    return svn_error_wrap_apr(result, ((void*)0));

  return SVN_NO_ERROR;
}
