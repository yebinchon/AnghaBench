
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int svn_depth_infinity ;
 int * svn_ra_get_locks2 (int *,int **,char const*,int ,int *) ;

svn_error_t *svn_ra_get_locks(svn_ra_session_t *session,
                              apr_hash_t **locks,
                              const char *path,
                              apr_pool_t *pool)
{
  return svn_ra_get_locks2(session, locks, path, svn_depth_infinity, pool);
}
