
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR_RA_NOT_IMPLEMENTED ;
 int * svn_error_create (int ,int *,int *) ;

svn_error_t *
svn_ra_serf_init(int abi_version,
                 apr_pool_t *pool,
                 apr_hash_t *hash)
{
  return svn_error_create(SVN_ERR_RA_NOT_IMPLEMENTED, ((void*)0), ((void*)0));
}
