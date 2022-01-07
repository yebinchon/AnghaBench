
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_finfo_t ;


 int APR_FINFO_OWNER ;
 int APR_FINFO_PROT ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_io__is_finfo_executable (int *,int *,int *) ;
 int svn_io_stat (int *,char const*,int,int *) ;

svn_error_t *
svn_io_is_file_executable(svn_boolean_t *executable,
                          const char *path,
                          apr_pool_t *pool)
{
  *executable = FALSE;


  return SVN_NO_ERROR;
}
