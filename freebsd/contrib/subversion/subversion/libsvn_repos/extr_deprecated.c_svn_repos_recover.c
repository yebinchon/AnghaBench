
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * svn_repos_recover2 (char const*,int ,int *,int *,int *) ;

svn_error_t *
svn_repos_recover(const char *path,
                  apr_pool_t *pool)
{
  return svn_repos_recover2(path, FALSE, ((void*)0), ((void*)0), pool);
}
