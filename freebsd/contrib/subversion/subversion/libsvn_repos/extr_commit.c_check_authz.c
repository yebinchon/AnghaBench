
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_repos_authz_access_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct edit_baton {int authz_baton; int (* authz_callback ) (int,int *,int *,char const*,int ,int *) ;} ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_AUTHZ_UNREADABLE ;
 int SVN_ERR_AUTHZ_UNWRITABLE ;
 int * SVN_NO_ERROR ;
 int stub1 (int,int *,int *,char const*,int ,int *) ;
 int svn_authz_write ;
 int * svn_error_create (int ,int *,char*) ;

__attribute__((used)) static svn_error_t *
check_authz(struct edit_baton *editor_baton, const char *path,
            svn_fs_root_t *root, svn_repos_authz_access_t required,
            apr_pool_t *pool)
{
  if (editor_baton->authz_callback)
    {
      svn_boolean_t allowed;

      SVN_ERR(editor_baton->authz_callback(required, &allowed, root, path,
                                           editor_baton->authz_baton, pool));
      if (!allowed)
        return svn_error_create(required & svn_authz_write ?
                                SVN_ERR_AUTHZ_UNWRITABLE :
                                SVN_ERR_AUTHZ_UNREADABLE,
                                ((void*)0), "Access denied");
    }

  return SVN_NO_ERROR;
}
