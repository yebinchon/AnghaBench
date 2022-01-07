
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int authz_pool ;
 int filtered_pool ;
 int svn_object_pool__create (int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
synchronized_authz_initialize(void *baton, apr_pool_t *pool)
{



  svn_boolean_t multi_threaded = FALSE;


  SVN_ERR(svn_object_pool__create(&authz_pool, multi_threaded, pool));
  SVN_ERR(svn_object_pool__create(&filtered_pool, multi_threaded, pool));

  return SVN_NO_ERROR;
}
