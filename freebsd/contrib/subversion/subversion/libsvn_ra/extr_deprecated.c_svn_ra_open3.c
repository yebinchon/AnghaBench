
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_session_t ;
typedef int svn_ra_callbacks2_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int * svn_ra_open4 (int **,int *,char const*,char const*,int const*,void*,int *,int *) ;

svn_error_t *svn_ra_open3(svn_ra_session_t **session_p,
                          const char *repos_URL,
                          const char *uuid,
                          const svn_ra_callbacks2_t *callbacks,
                          void *callback_baton,
                          apr_hash_t *config,
                          apr_pool_t *pool)
{
  return svn_ra_open4(session_p, ((void*)0), repos_URL, uuid,
                      callbacks, callback_baton, config, pool);
}
