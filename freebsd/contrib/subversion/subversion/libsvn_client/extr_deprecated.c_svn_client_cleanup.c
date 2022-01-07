
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ILLEGAL_TARGET ;
 int TRUE ;
 int _ (char*) ;
 int svn_client_cleanup2 (char const*,int ,int ,int ,int ,int ,int *,int *) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int * svn_error_trace (int ) ;
 scalar_t__ svn_path_is_url (char const*) ;

svn_error_t *
svn_client_cleanup(const char *path,
                   svn_client_ctx_t *ctx,
                   apr_pool_t *scratch_pool)
{
  const char *local_abspath;

  if (svn_path_is_url(path))
    return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                             _("'%s' is not a local path"), path);

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, scratch_pool));

  return svn_error_trace(svn_client_cleanup2(local_abspath,
                                             TRUE ,
                                             TRUE ,
                                             TRUE ,
                                             TRUE ,
                                             FALSE ,
                                             ctx, scratch_pool));
}
