
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct svn_config_t {int dummy; } ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int APR_FILEPATH_NATIVE ;
 scalar_t__ APR_SUCCESS ;
 int SVN_CONFIG_CATEGORY_CONFIG ;
 int SVN_CONFIG_OPTION_MERGE_TOOL_CMD ;
 int SVN_CONFIG_SECTION_HELPERS ;
 int SVN_ERR (int ) ;
 int SVN_ERR_CL_NO_EXTERNAL_MERGE_TOOL ;
 int SVN_ERR_EXTERNAL_PROGRAM ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ apr_env_get (char**,char*,int *) ;
 scalar_t__ apr_filepath_get (char**,int ,int *) ;
 int svn_config_get (struct svn_config_t*,char const**,int ,int ,int *) ;
 int svn_ctype_isspace (char const) ;
 int svn_dirent_internal_style (char*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,char*,int) ;
 int * svn_error_wrap_apr (scalar_t__,int *) ;
 struct svn_config_t* svn_hash_gets (int *,int ) ;
 int svn_io_run_cmd (int ,char*,char const**,int*,int *,int ,int *,int *,int *,int *) ;

svn_error_t *
svn_cl__merge_file_externally(const char *base_path,
                              const char *their_path,
                              const char *my_path,
                              const char *merged_path,
                              const char *wc_path,
                              apr_hash_t *config,
                              svn_boolean_t *remains_in_conflict,
                              apr_pool_t *pool)
{
  char *merge_tool;

  if (apr_env_get(&merge_tool, "SVN_MERGE", pool) != APR_SUCCESS)
    {
      struct svn_config_t *cfg;
      merge_tool = ((void*)0);
      cfg = config ? svn_hash_gets(config, SVN_CONFIG_CATEGORY_CONFIG) : ((void*)0);

      svn_config_get(cfg, (const char **)&merge_tool,
                     SVN_CONFIG_SECTION_HELPERS,
                     SVN_CONFIG_OPTION_MERGE_TOOL_CMD, ((void*)0));
    }

  if (merge_tool)
    {
      const char *c;

      for (c = merge_tool; *c; c++)
        if (!svn_ctype_isspace(*c))
          break;

      if (! *c)
        return svn_error_create
          (SVN_ERR_CL_NO_EXTERNAL_MERGE_TOOL, ((void*)0),
           _("The SVN_MERGE environment variable is empty or "
             "consists solely of whitespace. Expected a shell command.\n"));
    }
  else
      return svn_error_create
        (SVN_ERR_CL_NO_EXTERNAL_MERGE_TOOL, ((void*)0),
         _("The environment variable SVN_MERGE and the merge-tool-cmd run-time "
           "configuration option were not set.\n"));

  {
    const char *arguments[7] = { 0 };
    char *cwd;
    int exitcode;

    apr_status_t status = apr_filepath_get(&cwd, APR_FILEPATH_NATIVE, pool);
    if (status != 0)
      return svn_error_wrap_apr(status, ((void*)0));

    arguments[0] = merge_tool;
    arguments[1] = base_path;
    arguments[2] = their_path;
    arguments[3] = my_path;
    arguments[4] = merged_path;
    arguments[5] = wc_path;
    arguments[6] = ((void*)0);

    SVN_ERR(svn_io_run_cmd(svn_dirent_internal_style(cwd, pool), merge_tool,
                           arguments, &exitcode, ((void*)0), TRUE, ((void*)0), ((void*)0), ((void*)0),
                           pool));




    if (exitcode != 0 && exitcode != 1)
      return svn_error_createf(SVN_ERR_EXTERNAL_PROGRAM, ((void*)0),
        _("The external merge tool '%s' exited with exit code %d."),
        merge_tool, exitcode);
    else if (remains_in_conflict)
      *remains_in_conflict = exitcode == 1;
  }
  return SVN_NO_ERROR;
}
