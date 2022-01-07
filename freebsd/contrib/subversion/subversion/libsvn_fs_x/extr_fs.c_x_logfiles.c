
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int * SVN_NO_ERROR ;
 int * apr_array_make (int *,int ,int) ;

__attribute__((used)) static svn_error_t *
x_logfiles(apr_array_header_t **logfiles,
           const char *path,
           svn_boolean_t only_unused,
           apr_pool_t *pool)
{

  *logfiles = apr_array_make(pool, 0, sizeof(const char *));

  return SVN_NO_ERROR;
}
