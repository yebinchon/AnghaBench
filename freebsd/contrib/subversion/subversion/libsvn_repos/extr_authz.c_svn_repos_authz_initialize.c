
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int authz_pool_initialized ;
 int svn_atomic__init_once (int *,int ,int *,int *) ;
 int * svn_error_trace (int ) ;
 int synchronized_authz_initialize ;

svn_error_t *
svn_repos_authz_initialize(apr_pool_t *pool)
{

  return svn_error_trace(svn_atomic__init_once(&authz_pool_initialized,
                                               synchronized_authz_initialize,
                                               ((void*)0), pool));
}
