
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int common_pool_initialized ;
 int svn_atomic__init_once (int *,int ,int *,int *) ;
 int svn_dso_initialize2 () ;
 int * svn_error_trace (int ) ;
 int synchronized_initialize ;

svn_error_t *
svn_fs_initialize(apr_pool_t *pool)
{






  return svn_error_trace(svn_atomic__init_once(&common_pool_initialized,
                                               synchronized_initialize,
                                               ((void*)0), pool));
}
