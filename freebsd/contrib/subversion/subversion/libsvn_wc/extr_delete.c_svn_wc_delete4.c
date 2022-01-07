
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int svn_wc_notify_func2_t ;
struct TYPE_16__ {int * db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_wc__db_t ;
typedef int svn_wc__db_status_t ;
typedef int svn_skel_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_17__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int svn_cancel_func_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (TYPE_2__*) ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 scalar_t__ SVN_ERR_WC_PATH_UNEXPECTED_STATUS ;
 TYPE_2__* SVN_NO_ERROR ;
 int _ (char*) ;
 TYPE_2__* create_delete_wq_items (int **,int *,char const*,scalar_t__,scalar_t__,int *,int *) ;
 TYPE_2__* erase_unversioned_from_wc (char const*,int ,int ,void*,int *) ;
 int svn_dirent_dirname (char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_createf (scalar_t__,int *,int ,int ) ;
 scalar_t__ svn_node_dir ;
 TYPE_2__* svn_wc__db_is_wcroot (scalar_t__*,int *,char const*,int *) ;
 TYPE_2__* svn_wc__db_op_delete (int *,char const*,int *,int,int *,int *,int ,void*,int ,void*,int *) ;
 TYPE_2__* svn_wc__db_read_info (int*,scalar_t__*,int *,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,char const*,int *,int *) ;

 int svn_wc__db_status_normal ;

 TYPE_2__* svn_wc__wq_run (int *,char const*,int ,void*,int *) ;
 TYPE_2__* svn_wc__write_check (int *,int ,int *) ;

svn_error_t *
svn_wc_delete4(svn_wc_context_t *wc_ctx,
               const char *local_abspath,
               svn_boolean_t keep_local,
               svn_boolean_t delete_unversioned_target,
               svn_cancel_func_t cancel_func,
               void *cancel_baton,
               svn_wc_notify_func2_t notify_func,
               void *notify_baton,
               apr_pool_t *scratch_pool)
{
  apr_pool_t *pool = scratch_pool;
  svn_wc__db_t *db = wc_ctx->db;
  svn_error_t *err;
  svn_wc__db_status_t status;
  svn_node_kind_t kind;
  svn_boolean_t conflicted;
  svn_skel_t *work_items = ((void*)0);
  const char *repos_relpath;

  err = svn_wc__db_read_info(&status, &kind, ((void*)0), &repos_relpath, ((void*)0), ((void*)0),
                             ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                             ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), &conflicted,
                             ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                             db, local_abspath, pool, pool);

  if (delete_unversioned_target &&
      err != ((void*)0) && err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
    {
      svn_error_clear(err);

      if (!keep_local)
        SVN_ERR(erase_unversioned_from_wc(local_abspath, FALSE,
                                          cancel_func, cancel_baton,
                                          pool));
      return SVN_NO_ERROR;
    }
  else
    SVN_ERR(err);

  switch (status)
    {

      case 129:
      case 128:
        return svn_error_createf(SVN_ERR_WC_PATH_NOT_FOUND, ((void*)0),
                                 _("'%s' cannot be deleted"),
                                 svn_dirent_local_style(local_abspath, pool));


      default:
        break;
    }

  if (status == svn_wc__db_status_normal
      && kind == svn_node_dir)
    {
      svn_boolean_t is_wcroot;
      SVN_ERR(svn_wc__db_is_wcroot(&is_wcroot, db, local_abspath, pool));

      if (is_wcroot)
        return svn_error_createf(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, ((void*)0),
                                 _("'%s' is the root of a working copy and "
                                   "cannot be deleted"),
                                 svn_dirent_local_style(local_abspath, pool));
    }
  if (repos_relpath && !repos_relpath[0])
    return svn_error_createf(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, ((void*)0),
                             _("'%s' represents the repository root "
                               "and cannot be deleted"),
                               svn_dirent_local_style(local_abspath, pool));



  SVN_ERR(svn_wc__write_check(db, svn_dirent_dirname(local_abspath, pool),
                              pool));


      if (!keep_local)
        {
          SVN_ERR(create_delete_wq_items(&work_items, db, local_abspath, kind,
                                         conflicted,
                                         scratch_pool, scratch_pool));
        }

  SVN_ERR(svn_wc__db_op_delete(db, local_abspath,
                               ((void*)0) ,
                               !keep_local ,
                               ((void*)0), work_items,
                               cancel_func, cancel_baton,
                               notify_func, notify_baton,
                               pool));

  if (work_items)
    SVN_ERR(svn_wc__wq_run(db, local_abspath, cancel_func, cancel_baton,
                           scratch_pool));

  return SVN_NO_ERROR;
}
