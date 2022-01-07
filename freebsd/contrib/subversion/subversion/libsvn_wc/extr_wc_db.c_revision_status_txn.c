
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_revnum_t ;
struct TYPE_9__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_1__* SVN_NO_ERROR ;
 int _ (char*) ;
 int does_node_exist (int *,int *,char const*) ;
 int get_min_max_revisions (int *,int *,int *,char const*,int ,int *) ;
 int has_db_mods (int *,int *,char const*,int *) ;
 TYPE_1__* has_switched_subtrees (int *,int *,char const*,char const*,int *) ;
 int is_sparse_checkout_internal (int *,int *,char const*,int *) ;
 int path_for_error_message (int *,char const*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_createf (scalar_t__,int *,int ,int ) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
revision_status_txn(svn_revnum_t *min_revision,
                    svn_revnum_t *max_revision,
                    svn_boolean_t *is_sparse_checkout,
                    svn_boolean_t *is_modified,
                    svn_boolean_t *is_switched,
                    svn_wc__db_wcroot_t *wcroot,
                    const char *local_relpath,
                    svn_wc__db_t *db,
                    const char *trail_url,
                    svn_boolean_t committed,
                    apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  svn_boolean_t exists;

  SVN_ERR(does_node_exist(&exists, wcroot, local_relpath));

  if (!exists)
    {
      return svn_error_createf(SVN_ERR_WC_PATH_NOT_FOUND, ((void*)0),
                               _("The node '%s' was not found."),
                               path_for_error_message(wcroot, local_relpath,
                                                      scratch_pool));
    }


  SVN_ERR(get_min_max_revisions(min_revision, max_revision, wcroot,
                                local_relpath, committed, scratch_pool));


  SVN_ERR(is_sparse_checkout_internal(is_sparse_checkout, wcroot,
                                      local_relpath, scratch_pool));


  {
    err = has_switched_subtrees(is_switched, wcroot, local_relpath,
                                trail_url, scratch_pool);

    if (err)
      {
        if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
          return svn_error_trace(err);

        svn_error_clear(err);
        *is_switched = FALSE;
      }
  }


  SVN_ERR(has_db_mods(is_modified, wcroot, local_relpath, scratch_pool));

  return SVN_NO_ERROR;
}
