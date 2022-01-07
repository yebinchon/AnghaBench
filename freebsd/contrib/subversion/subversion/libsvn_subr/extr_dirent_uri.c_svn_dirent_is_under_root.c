
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_EABOVEROOT ;
 int APR_FILEPATH_NOTABOVEROOT ;
 int APR_FILEPATH_SECUREROOTTEST ;
 scalar_t__ APR_SUCCESS ;
 int FALSE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 scalar_t__ apr_filepath_merge (char**,char const*,char const*,int,int *) ;
 char* svn_dirent_canonicalize (char*,int *) ;
 int * svn_error_wrap_apr (scalar_t__,int *) ;

svn_error_t *
svn_dirent_is_under_root(svn_boolean_t *under_root,
                         const char **result_path,
                         const char *base_path,
                         const char *path,
                         apr_pool_t *result_pool)
{
  apr_status_t status;
  char *full_path;

  *under_root = FALSE;
  if (result_path)
    *result_path = ((void*)0);

  status = apr_filepath_merge(&full_path,
                              base_path,
                              path,
                              APR_FILEPATH_NOTABOVEROOT
                              | APR_FILEPATH_SECUREROOTTEST,
                              result_pool);

  if (status == APR_SUCCESS)
    {
      if (result_path)
        *result_path = svn_dirent_canonicalize(full_path, result_pool);
      *under_root = TRUE;
      return SVN_NO_ERROR;
    }
  else if (status == APR_EABOVEROOT)
    {
      *under_root = FALSE;
      return SVN_NO_ERROR;
    }

  return svn_error_wrap_apr(status, ((void*)0));
}
