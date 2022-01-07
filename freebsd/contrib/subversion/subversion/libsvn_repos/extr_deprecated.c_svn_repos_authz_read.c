
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int svn_authz_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ILLEGAL_TARGET ;
 int * svn_error_createf (int ,int *,char*,char const*) ;
 int * svn_error_trace (int ) ;
 scalar_t__ svn_path_is_url (char const*) ;
 int svn_repos_authz_read2 (int **,char const*,int *,int ,int *) ;

svn_error_t *
svn_repos_authz_read(svn_authz_t **authz_p, const char *file,
                     svn_boolean_t must_exist, apr_pool_t *pool)
{

  if (svn_path_is_url(file))
    return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                             "'%s' is not a file name", file);

  return svn_error_trace(svn_repos_authz_read2(authz_p, file, ((void*)0),
                                               must_exist, pool));
}
