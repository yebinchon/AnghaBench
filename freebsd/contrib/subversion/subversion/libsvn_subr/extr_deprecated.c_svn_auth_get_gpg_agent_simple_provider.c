
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_auth_provider_object_t ;
typedef int apr_pool_t ;


 int svn_auth__get_dummmy_simple_provider (int **,int *) ;
 int svn_auth__get_gpg_agent_simple_provider (int **,int *) ;

void
svn_auth_get_gpg_agent_simple_provider(svn_auth_provider_object_t **provider,
                                       apr_pool_t *pool)
{



  svn_auth__get_dummmy_simple_provider(provider, pool);

}
