
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_temp_dir_get (char const**,int *) ;
 int cstring_to_utf8 (char const**,char const*,int *) ;
 int svn_dirent_get_absolute (int *,char const*,int *) ;
 char* svn_dirent_internal_style (char const*,int *) ;
 int * svn_error_wrap_apr (scalar_t__,int ) ;
 int * svn_pool_create (int *) ;
 int temp_dir ;

__attribute__((used)) static svn_error_t *
init_temp_dir(void *baton, apr_pool_t *scratch_pool)
{

  apr_pool_t *global_pool = svn_pool_create(((void*)0));
  const char *dir;

  apr_status_t apr_err = apr_temp_dir_get(&dir, scratch_pool);

  if (apr_err)
    return svn_error_wrap_apr(apr_err, _("Can't find a temporary directory"));

  SVN_ERR(cstring_to_utf8(&dir, dir, scratch_pool));

  dir = svn_dirent_internal_style(dir, scratch_pool);

  SVN_ERR(svn_dirent_get_absolute(&temp_dir, dir, global_pool));

  return SVN_NO_ERROR;
}
