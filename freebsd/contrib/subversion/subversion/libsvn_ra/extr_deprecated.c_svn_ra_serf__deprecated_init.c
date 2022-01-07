
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int * svn_error_trace (int ) ;
 int svn_ra_serf_init (int,int *,int *) ;

svn_error_t *
svn_ra_serf__deprecated_init(int abi_version,
                             apr_pool_t *pool,
                             apr_hash_t *hash)
{
  return svn_error_trace(svn_ra_serf_init(abi_version, pool, hash));
}
