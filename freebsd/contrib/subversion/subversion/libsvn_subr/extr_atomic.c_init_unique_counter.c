
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int counter_mutex ;
 int svn_mutex__init (int *,int ,int ) ;
 int svn_pool_create (int *) ;

__attribute__((used)) static svn_error_t *
init_unique_counter(void *null_baton,
                    apr_pool_t *null_pool)
{


  SVN_ERR(svn_mutex__init(&counter_mutex, TRUE, svn_pool_create(((void*)0))));
  return SVN_NO_ERROR;
}
