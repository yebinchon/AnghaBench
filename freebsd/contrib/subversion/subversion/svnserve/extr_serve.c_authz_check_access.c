
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_repos_authz_access_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_6__ {int pool; TYPE_3__* client_info; TYPE_2__* repository; } ;
typedef TYPE_1__ server_baton_t ;
struct TYPE_7__ {scalar_t__ username_case; int authz_repos_name; int authzdb; } ;
typedef TYPE_2__ repository_t ;
struct TYPE_8__ {char* authz_user; scalar_t__ user; } ;
typedef TYPE_3__ client_info_t ;
typedef int apr_pool_t ;


 scalar_t__ CASE_FORCE_LOWER ;
 scalar_t__ CASE_FORCE_UPPER ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 char* apr_pstrdup (int ,scalar_t__) ;
 int convert_case (char*,int ) ;
 int log_authz_denied (char const*,int ,TYPE_1__*,int *) ;
 char* svn_fspath__canonicalize (char const*,int *) ;
 int svn_repos_authz_check_access (int ,int ,char const*,char*,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *authz_check_access(svn_boolean_t *allowed,
                                       const char *path,
                                       svn_repos_authz_access_t required,
                                       server_baton_t *b,
                                       apr_pool_t *pool)
{
  repository_t *repository = b->repository;
  client_info_t *client_info = b->client_info;





  if (!repository->authzdb)
    {
      *allowed = TRUE;
      return SVN_NO_ERROR;
    }







  if (path && *path != '/')
    path = svn_fspath__canonicalize(path, pool);




  if (client_info->user && (! client_info->authz_user))
    {
      char *authz_user = apr_pstrdup(b->pool, client_info->user);
      if (repository->username_case == CASE_FORCE_UPPER)
        convert_case(authz_user, TRUE);
      else if (repository->username_case == CASE_FORCE_LOWER)
        convert_case(authz_user, FALSE);

      client_info->authz_user = authz_user;
    }

  SVN_ERR(svn_repos_authz_check_access(repository->authzdb,
                                       repository->authz_repos_name,
                                       path, client_info->authz_user,
                                       required, allowed, pool));
  if (!*allowed)
    SVN_ERR(log_authz_denied(path, required, b, pool));

  return SVN_NO_ERROR;
}
