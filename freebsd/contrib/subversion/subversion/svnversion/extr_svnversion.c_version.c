
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int TRUE ;
 int * svn_opt_print_help4 (int *,char*,int ,int ,int ,int *,int *,int *,int *,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
version(svn_boolean_t quiet, apr_pool_t *pool)
{
  return svn_opt_print_help4(((void*)0), "svnversion", TRUE, quiet, FALSE,
                             ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), pool);
}
