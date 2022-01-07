
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int APR_FILEPATH_NATIVE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_EXTERNAL_PROGRAM ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ apr_filepath_get (char**,int ,int *) ;
 scalar_t__ apr_filepath_set (char const*,int *) ;
 char* apr_psprintf (int *,char*,char const*,char const*) ;
 int find_editor_binary (char const**,char const*,int *) ;
 int stderr ;
 int svn_dirent_split (char const**,char const**,char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*,int) ;
 int * svn_error_wrap_apr (scalar_t__,int ,...) ;
 int svn_handle_error2 (int *,int ,int ,char*) ;
 int svn_path_cstring_from_utf8 (char const**,char const*,int *) ;
 int system (char const*) ;

svn_error_t *
svn_cmdline__edit_file_externally(const char *path,
                                  const char *editor_cmd,
                                  apr_hash_t *config,
                                  apr_pool_t *pool)
{
  const char *editor, *cmd, *base_dir, *file_name, *base_dir_apr;
  char *old_cwd;
  int sys_err;
  apr_status_t apr_err;

  svn_dirent_split(&base_dir, &file_name, path, pool);

  SVN_ERR(find_editor_binary(&editor, editor_cmd, config));

  apr_err = apr_filepath_get(&old_cwd, APR_FILEPATH_NATIVE, pool);
  if (apr_err)
    return svn_error_wrap_apr(apr_err, _("Can't get working directory"));


  if (base_dir[0] == '\0')
    base_dir_apr = ".";
  else
    SVN_ERR(svn_path_cstring_from_utf8(&base_dir_apr, base_dir, pool));

  apr_err = apr_filepath_set(base_dir_apr, pool);
  if (apr_err)
    return svn_error_wrap_apr
      (apr_err, _("Can't change working directory to '%s'"), base_dir);

  cmd = apr_psprintf(pool, "%s %s", editor, file_name);
  sys_err = system(cmd);

  apr_err = apr_filepath_set(old_cwd, pool);
  if (apr_err)
    svn_handle_error2(svn_error_wrap_apr
                      (apr_err, _("Can't restore working directory")),
                      stderr, TRUE , "svn: ");

  if (sys_err)


    return svn_error_createf(SVN_ERR_EXTERNAL_PROGRAM, ((void*)0),
                             _("system('%s') returned %d"), cmd, sys_err);

  return SVN_NO_ERROR;
}
