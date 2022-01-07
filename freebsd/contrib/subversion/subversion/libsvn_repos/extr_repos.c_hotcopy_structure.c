
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
struct hotcopy_ctx_t {int src_len; scalar_t__ incremental; int dest; int cancel_baton; int (* cancel_func ) (int ) ;} ;
typedef int apr_pool_t ;
struct TYPE_13__ {scalar_t__ filetype; } ;
typedef TYPE_2__ apr_finfo_t ;


 scalar_t__ APR_DIR ;
 scalar_t__ APR_LNK ;
 scalar_t__ APR_REG ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_DIR_NOT_EMPTY ;
 TYPE_1__* SVN_NO_ERROR ;
 int SVN_REPOS__DB_DIR ;
 int SVN_REPOS__FORMAT ;
 int SVN_REPOS__LOCK_DIR ;
 int TRUE ;
 TYPE_1__* create_repos_dir (char const*,int *) ;
 int strlen (char const*) ;
 int stub1 (int ) ;
 int svn_dirent_get_longest_ancestor (int ,char const*,int *) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 TYPE_1__* svn_io_copy_file (char const*,char const*,int ,int *) ;
 TYPE_1__* svn_io_copy_link (char const*,char const*,int *) ;
 scalar_t__ svn_path_compare_paths (int ,int ) ;

__attribute__((used)) static svn_error_t *hotcopy_structure(void *baton,
                                      const char *path,
                                      const apr_finfo_t *finfo,
                                      apr_pool_t *pool)
{
  const struct hotcopy_ctx_t *ctx = baton;
  const char *sub_path;
  const char *target;

  if (ctx->cancel_func)
    SVN_ERR(ctx->cancel_func(ctx->cancel_baton));

  if (strlen(path) == ctx->src_len)
    {
      sub_path = "";
    }
  else
    {
      sub_path = &path[ctx->src_len+1];


      if (svn_path_compare_paths
          (svn_dirent_get_longest_ancestor(SVN_REPOS__DB_DIR, sub_path, pool),
           SVN_REPOS__DB_DIR) == 0)
        return SVN_NO_ERROR;

      if (svn_path_compare_paths
          (svn_dirent_get_longest_ancestor(SVN_REPOS__LOCK_DIR, sub_path,
                                           pool),
           SVN_REPOS__LOCK_DIR) == 0)
        return SVN_NO_ERROR;

      if (svn_path_compare_paths
          (svn_dirent_get_longest_ancestor(SVN_REPOS__FORMAT, sub_path, pool),
           SVN_REPOS__FORMAT) == 0)
        return SVN_NO_ERROR;
    }

  target = svn_dirent_join(ctx->dest, sub_path, pool);

  if (finfo->filetype == APR_DIR)
    {
      svn_error_t *err;

      err = create_repos_dir(target, pool);
      if (ctx->incremental && err && err->apr_err == SVN_ERR_DIR_NOT_EMPTY)
        {
          svn_error_clear(err);
          err = SVN_NO_ERROR;
        }
      return svn_error_trace(err);
    }
  else if (finfo->filetype == APR_REG)
    return svn_io_copy_file(path, target, TRUE, pool);
  else if (finfo->filetype == APR_LNK)
    return svn_io_copy_link(path, target, pool);
  else
    return SVN_NO_ERROR;
}
