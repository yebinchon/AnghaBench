
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int * svn_repos_recover3 (char const*,int ,int * (*) (void*),void*,int *,int *,int *) ;

svn_error_t *
svn_repos_recover2(const char *path,
                   svn_boolean_t nonblocking,
                   svn_error_t *(*start_callback)(void *baton),
                   void *start_callback_baton,
                   apr_pool_t *pool)
{
  return svn_repos_recover3(path, nonblocking,
                            start_callback, start_callback_baton,
                            ((void*)0), ((void*)0),
                            pool);
}
