
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int * db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_wc__db_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_16__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (TYPE_2__*) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_WC_NOT_DIRECTORY ;
 int SVN_ERR_WC_NOT_WORKING_COPY ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_2__* SVN_NO_ERROR ;
 scalar_t__ SVN_WC__ERR_IS_NOT_CURRENT_WC (TYPE_2__*) ;
 int TRUE ;
 int _ (char*) ;
 char* apr_pstrdup (int *,char const*) ;
 char* svn_dirent_dirname (char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_createf (int ,int *,int ,int ) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_none ;
 scalar_t__ svn_node_unknown ;
 TYPE_2__* svn_wc__db_is_switched (scalar_t__*,scalar_t__*,scalar_t__*,int *,char const*,int *) ;
 TYPE_2__* svn_wc__db_read_kind (scalar_t__*,int *,char const*,int ,int ,scalar_t__,int *) ;
 TYPE_2__* svn_wc__db_wclock_obtain (int *,char const*,int,scalar_t__,int *) ;

svn_error_t *
svn_wc__acquire_write_lock(const char **lock_root_abspath,
                           svn_wc_context_t *wc_ctx,
                           const char *local_abspath,
                           svn_boolean_t lock_anchor,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  svn_wc__db_t *db = wc_ctx->db;
  svn_boolean_t is_wcroot;
  svn_boolean_t is_switched;
  svn_node_kind_t kind;
  svn_error_t *err;

  err = svn_wc__db_is_switched(&is_wcroot, &is_switched, &kind,
                               db, local_abspath, scratch_pool);

  if (err)
    {
      if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
        return svn_error_trace(err);

      svn_error_clear(err);

      kind = svn_node_none;
      is_wcroot = FALSE;
      is_switched = FALSE;
    }

  if (!lock_root_abspath && kind != svn_node_dir)
    return svn_error_createf(SVN_ERR_WC_NOT_DIRECTORY, ((void*)0),
                             _("Can't obtain lock on non-directory '%s'."),
                             svn_dirent_local_style(local_abspath,
                                                    scratch_pool));

  if (lock_anchor && kind == svn_node_dir)
    {
      if (is_wcroot)
        lock_anchor = FALSE;
    }

  if (lock_anchor)
    {
      const char *parent_abspath;
      SVN_ERR_ASSERT(lock_root_abspath != ((void*)0));

      parent_abspath = svn_dirent_dirname(local_abspath, scratch_pool);

      if (kind == svn_node_dir)
        {
          if (! is_switched)
            local_abspath = parent_abspath;
        }
      else if (kind != svn_node_none && kind != svn_node_unknown)
        {

          local_abspath = parent_abspath;
        }
      else
        {

          svn_node_kind_t parent_kind;
          err = svn_wc__db_read_kind(&parent_kind, db, parent_abspath,
                                     TRUE ,
                                     TRUE ,
                                     FALSE ,
                                     scratch_pool);
          if (err && SVN_WC__ERR_IS_NOT_CURRENT_WC(err))
            {
              svn_error_clear(err);
              parent_kind = svn_node_unknown;
            }
          else
            SVN_ERR(err);

          if (parent_kind != svn_node_dir)
            return svn_error_createf(SVN_ERR_WC_NOT_WORKING_COPY, ((void*)0),
                                     _("'%s' is not a working copy"),
                                     svn_dirent_local_style(local_abspath,
                                                            scratch_pool));

          local_abspath = parent_abspath;
        }
    }
  else if (kind != svn_node_dir)
    {
      local_abspath = svn_dirent_dirname(local_abspath, scratch_pool);
    }

  if (lock_root_abspath)
    *lock_root_abspath = apr_pstrdup(result_pool, local_abspath);

  SVN_ERR(svn_wc__db_wclock_obtain(wc_ctx->db, local_abspath,
                                   -1 ,
                                   FALSE ,
                                   scratch_pool));

  return SVN_NO_ERROR;
}
