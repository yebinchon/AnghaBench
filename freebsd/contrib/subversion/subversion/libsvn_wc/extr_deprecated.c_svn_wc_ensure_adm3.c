
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_context_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_BAD_URL ;
 int SVN_ERR_BAD_UUID ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int * svn_error_create (int ,int *,int *) ;
 int * svn_error_trace (int ) ;
 int svn_wc_context_create (int **,int *,int *,int *) ;
 int svn_wc_context_destroy (int *) ;
 int svn_wc_ensure_adm4 (int *,char const*,char const*,char const*,char const*,int ,int ,int *) ;

svn_error_t *
svn_wc_ensure_adm3(const char *path,
                   const char *uuid,
                   const char *url,
                   const char *repos,
                   svn_revnum_t revision,
                   svn_depth_t depth,
                   apr_pool_t *pool)
{
  const char *local_abspath;
  svn_wc_context_t *wc_ctx;

  if (uuid == ((void*)0))
    return svn_error_create(SVN_ERR_BAD_UUID, ((void*)0), ((void*)0));
  if (repos == ((void*)0))
    return svn_error_create(SVN_ERR_BAD_URL, ((void*)0), ((void*)0));

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, pool));
  SVN_ERR(svn_wc_context_create(&wc_ctx, ((void*)0) , pool, pool));

  SVN_ERR(svn_wc_ensure_adm4(wc_ctx, local_abspath, url, repos, uuid, revision,
                             depth, pool));

  return svn_error_trace(svn_wc_context_destroy(wc_ctx));
}
