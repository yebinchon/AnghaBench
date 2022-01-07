
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int * svn_repos_link_path2 (void*,char const*,char const*,int ,int ,int *,int *) ;

svn_error_t *
svn_repos_link_path(void *baton, const char *path, const char *link_path,
                    svn_revnum_t rev, svn_boolean_t start_empty,
                    apr_pool_t *pool)
{
  return svn_repos_link_path2(baton, path, link_path, rev, start_empty,
                              ((void*)0), pool);
}
