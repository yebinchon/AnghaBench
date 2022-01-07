
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_procattr_t ;
typedef int apr_proc_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int APR_FULL_BLOCK ;
 int APR_NO_PIPE ;
 int APR_PROGRAM ;
 int APR_PROGRAM_PATH ;
 int ERRFILE_KEY ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char** apr_palloc (int *,int) ;
 scalar_t__ apr_pool_userdata_set (int *,int ,int *,int *) ;
 scalar_t__ apr_proc_create (int *,char const*,char const**,char const* const*,int *,int *) ;
 scalar_t__ apr_procattr_child_err_set (int *,int *,int *) ;
 scalar_t__ apr_procattr_child_errfn_set (int *,int ) ;
 scalar_t__ apr_procattr_child_in_set (int *,int *,int *) ;
 scalar_t__ apr_procattr_child_out_set (int *,int *,int *) ;
 scalar_t__ apr_procattr_cmdtype_set (int *,int ) ;
 scalar_t__ apr_procattr_create (int **,int *) ;
 scalar_t__ apr_procattr_dir_set (int *,char const*) ;
 scalar_t__ apr_procattr_io_set (int *,int ,int ,int ) ;
 int cstring_from_utf8 (char const**,char const* const,int *) ;
 int handle_child_process_error ;
 int * svn_error_wrap_apr (scalar_t__,int ,char const*) ;

svn_error_t *
svn_io_start_cmd3(apr_proc_t *cmd_proc,
                  const char *path,
                  const char *cmd,
                  const char *const *args,
                  const char *const *env,
                  svn_boolean_t inherit,
                  svn_boolean_t infile_pipe,
                  apr_file_t *infile,
                  svn_boolean_t outfile_pipe,
                  apr_file_t *outfile,
                  svn_boolean_t errfile_pipe,
                  apr_file_t *errfile,
                  apr_pool_t *pool)
{
  apr_status_t apr_err;
  apr_procattr_t *cmdproc_attr;
  int num_args;
  const char **args_native;
  const char *cmd_apr;

  SVN_ERR_ASSERT(!((infile != ((void*)0)) && infile_pipe));
  SVN_ERR_ASSERT(!((outfile != ((void*)0)) && outfile_pipe));
  SVN_ERR_ASSERT(!((errfile != ((void*)0)) && errfile_pipe));


  apr_err = apr_procattr_create(&cmdproc_attr, pool);
  if (apr_err)
    return svn_error_wrap_apr(apr_err,
                              _("Can't create process '%s' attributes"),
                              cmd);


  apr_err = apr_procattr_cmdtype_set(cmdproc_attr,
                                     inherit ? APR_PROGRAM_PATH : APR_PROGRAM);
  if (apr_err)
    return svn_error_wrap_apr(apr_err, _("Can't set process '%s' cmdtype"),
                              cmd);


  if (path)
    {
      const char *path_apr;


      if (path[0] == '\0')
        path = ".";

      SVN_ERR(cstring_from_utf8(&path_apr, path, pool));
      apr_err = apr_procattr_dir_set(cmdproc_attr, path_apr);
      if (apr_err)
        return svn_error_wrap_apr(apr_err,
                                  _("Can't set process '%s' directory"),
                                  cmd);
    }






  if (infile)
    {
      apr_err = apr_procattr_child_in_set(cmdproc_attr, infile, ((void*)0));
      if (apr_err)
        return svn_error_wrap_apr(apr_err,
                                  _("Can't set process '%s' child input"),
                                  cmd);
    }
  if (outfile)
    {
      apr_err = apr_procattr_child_out_set(cmdproc_attr, outfile, ((void*)0));
      if (apr_err)
        return svn_error_wrap_apr(apr_err,
                                  _("Can't set process '%s' child outfile"),
                                  cmd);
    }
  if (errfile)
    {
      apr_err = apr_procattr_child_err_set(cmdproc_attr, errfile, ((void*)0));
      if (apr_err)
        return svn_error_wrap_apr(apr_err,
                                  _("Can't set process '%s' child errfile"),
                                  cmd);
    }


  if (infile_pipe || outfile_pipe || errfile_pipe)
    {
      apr_err = apr_procattr_io_set(cmdproc_attr,
                                    infile_pipe ? APR_FULL_BLOCK : APR_NO_PIPE,
                                    outfile_pipe ? APR_FULL_BLOCK : APR_NO_PIPE,
                                    errfile_pipe ? APR_FULL_BLOCK : APR_NO_PIPE);

      if (apr_err)
        return svn_error_wrap_apr(apr_err,
                                  _("Can't set process '%s' stdio pipes"),
                                  cmd);
    }


  apr_err = apr_pool_userdata_set(errfile, ERRFILE_KEY, ((void*)0), pool);
  if (apr_err)
    return svn_error_wrap_apr(apr_err,
                              _("Can't set process '%s' child errfile for "
                                "error handler"),
                              cmd);
  apr_err = apr_procattr_child_errfn_set(cmdproc_attr,
                                         handle_child_process_error);
  if (apr_err)
    return svn_error_wrap_apr(apr_err,
                              _("Can't set process '%s' error handler"),
                              cmd);


  SVN_ERR(cstring_from_utf8(&cmd_apr, cmd, pool));
  for (num_args = 0; args[num_args]; num_args++)
    ;
  args_native = apr_palloc(pool, (num_args + 1) * sizeof(char *));
  args_native[num_args] = ((void*)0);
  while (num_args--)
    {



      SVN_ERR(cstring_from_utf8(&args_native[num_args],
                                args[num_args], pool));
    }



  apr_err = apr_proc_create(cmd_proc, cmd_apr, args_native,
                            inherit ? ((void*)0) : env, cmdproc_attr, pool);
  if (apr_err)
    return svn_error_wrap_apr(apr_err, _("Can't start process '%s'"), cmd);

  return SVN_NO_ERROR;
}
