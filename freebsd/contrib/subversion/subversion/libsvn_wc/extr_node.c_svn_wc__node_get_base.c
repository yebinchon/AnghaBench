
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef scalar_t__ svn_wc__db_status_t ;
struct TYPE_14__ {char* token; } ;
typedef TYPE_2__ svn_wc__db_lock_t ;
typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
struct TYPE_15__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT (int) ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 int SVN_INVALID_REVNUM ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 TYPE_3__* SVN_NO_ERROR ;
 int _ (char*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_createf (scalar_t__,int *,int ,int ) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 int svn_node_unknown ;
 TYPE_3__* svn_wc__db_base_get_info (scalar_t__*,int *,int *,char const**,char const**,char const**,int *,int *,int *,int *,int *,int *,TYPE_2__**,int *,int *,int *,int ,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_incomplete ;
 scalar_t__ svn_wc__db_status_normal ;

svn_error_t *
svn_wc__node_get_base(svn_node_kind_t *kind,
                      svn_revnum_t *revision,
                      const char **repos_relpath,
                      const char **repos_root_url,
                      const char **repos_uuid,
                      const char **lock_token,
                      svn_wc_context_t *wc_ctx,
                      const char *local_abspath,
                      svn_boolean_t ignore_enoent,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  svn_wc__db_status_t status;
  svn_wc__db_lock_t *lock;
  svn_node_kind_t db_kind;

  err = svn_wc__db_base_get_info(&status, &db_kind, revision, repos_relpath,
                                 repos_root_url, repos_uuid, ((void*)0),
                                 ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                 lock_token ? &lock : ((void*)0),
                                 ((void*)0), ((void*)0), ((void*)0),
                                 wc_ctx->db, local_abspath,
                                 result_pool, scratch_pool);

  if (err && err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
    return svn_error_trace(err);
  else if (err
           || (status != svn_wc__db_status_normal
               && status != svn_wc__db_status_incomplete))
    {
      if (!ignore_enoent)
        {
          if (err)
            return svn_error_trace(err);
          else
            return svn_error_createf(SVN_ERR_WC_PATH_NOT_FOUND, ((void*)0),
                                     _("The node '%s' was not found."),
                                     svn_dirent_local_style(local_abspath,
                                                            scratch_pool));
        }
      svn_error_clear(err);

      if (kind)
        *kind = svn_node_unknown;
      if (revision)
        *revision = SVN_INVALID_REVNUM;
      if (repos_relpath)
        *repos_relpath = ((void*)0);
      if (repos_root_url)
        *repos_root_url = ((void*)0);
      if (repos_uuid)
        *repos_uuid = ((void*)0);
      if (lock_token)
        *lock_token = ((void*)0);
      return SVN_NO_ERROR;
    }

  if (kind)
    *kind = db_kind;
  if (lock_token)
    *lock_token = lock ? lock->token : ((void*)0);

  SVN_ERR_ASSERT(!revision || SVN_IS_VALID_REVNUM(*revision));
  SVN_ERR_ASSERT(!repos_relpath || *repos_relpath);
  SVN_ERR_ASSERT(!repos_root_url || *repos_root_url);
  SVN_ERR_ASSERT(!repos_uuid || *repos_uuid);
  return SVN_NO_ERROR;
}
