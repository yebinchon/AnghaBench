
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* svn_repos_authz_func_t ) (int *,int *,char const*,void*,int *) ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_AUTHZ_ROOT_UNREADABLE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_create (int ,int ,int ) ;

__attribute__((used)) static svn_error_t *
authz_root_check(svn_fs_root_t *root,
                 const char *path,
                 svn_repos_authz_func_t authz_read_func,
                 void *authz_read_baton,
                 apr_pool_t *pool)
{
  svn_boolean_t allowed;

  if (authz_read_func)
    {
      SVN_ERR(authz_read_func(&allowed, root, path, authz_read_baton, pool));

      if (! allowed)
        return svn_error_create(SVN_ERR_AUTHZ_ROOT_UNREADABLE, 0,
                                _("Unable to open root of edit"));
    }

  return SVN_NO_ERROR;
}
