
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_wc_context_t ;
struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_1__* SVN_NO_ERROR ;
 int svn_dirent_get_absolute (char const**,int ,int *) ;
 int svn_dirent_join (char const*,char const*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int svn_path_is_url (char const*) ;
 char* svn_relpath_join (char const*,char const*,int *) ;
 TYPE_1__* svn_wc__node_get_repos_info (int *,char const**,int *,int *,int *,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
make_repos_relpath(const char **repos_relpath,
                   const char *diff_relpath,
                   const char *orig_target,
                   const char *session_relpath,
                   svn_wc_context_t *wc_ctx,
                   const char *anchor,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  const char *local_abspath;

  if (! session_relpath
      || (anchor && !svn_path_is_url(orig_target)))
    {
      svn_error_t *err;


      SVN_ERR(svn_dirent_get_absolute(&local_abspath,
                                      svn_dirent_join(anchor, diff_relpath,
                                                      scratch_pool),
                                      scratch_pool));

      err = svn_wc__node_get_repos_info(((void*)0), repos_relpath, ((void*)0), ((void*)0),
                                        wc_ctx, local_abspath,
                                        result_pool, scratch_pool);

      if (!session_relpath
          || ! err
          || (err && err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND))
        {
           return svn_error_trace(err);
        }






      svn_error_clear(err);
    }

  *repos_relpath = svn_relpath_join(session_relpath, diff_relpath,
                                    result_pool);

  return SVN_NO_ERROR;
}
