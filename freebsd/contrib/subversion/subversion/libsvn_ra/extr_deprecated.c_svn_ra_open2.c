
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_session_t ;
typedef int svn_ra_callbacks2_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int * svn_ra_open3 (int **,char const*,int *,int const*,void*,int *,int *) ;

svn_error_t *svn_ra_open2(svn_ra_session_t **session_p,
                          const char *repos_URL,
                          const svn_ra_callbacks2_t *callbacks,
                          void *callback_baton,
                          apr_hash_t *config,
                          apr_pool_t *pool)
{
  return svn_ra_open3(session_p, repos_URL, ((void*)0),
                      callbacks, callback_baton, config, pool);
}
