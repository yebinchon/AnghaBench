
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 char* svn_fspath__canonicalize (char const*,int *) ;

__attribute__((used)) static svn_error_t *
target_arg_to_fspath(const char **fspath,
                     const char *arg,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{

  *fspath = svn_fspath__canonicalize(arg, result_pool);
  return SVN_NO_ERROR;
}
