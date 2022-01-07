
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
typedef int svn_string_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_status_t ;
struct TYPE_4__ {int out; int err; int member_0; } ;
typedef TYPE_1__ apr_proc_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_file_t ;


 int APR_OS_DEFAULT ;
 int APR_WRITE ;
 int FALSE ;
 int SVN_ERR_REPOS_BAD_ARGS ;
 int SVN_NULL_DEVICE_NAME ;
 char const* SVN_REPOS__HOOKS_ENV_DEFAULT_SECTION ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ apr_file_close (int *) ;
 scalar_t__ apr_file_open (int **,int ,int ,int ,int *) ;
 int * check_hook_result (char const*,char const*,TYPE_1__*,int ,int *) ;
 int env_from_env_hash (int *,int *,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int * svn_error_trace (int *) ;
 int * svn_error_wrap_apr (scalar_t__,int ,...) ;
 int * svn_hash_gets (int *,char const*) ;
 int * svn_io_start_cmd3 (TYPE_1__*,char*,char const*,char const**,int ,int ,int ,int *,int ,int *,int ,int *,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_stringbuf__morph_into_string (int *) ;
 int * svn_stringbuf_from_aprfile (int **,int ,int *) ;

__attribute__((used)) static svn_error_t *
run_hook_cmd(svn_string_t **result,
             const char *name,
             const char *cmd,
             const char **args,
             apr_hash_t *hooks_env,
             apr_file_t *stdin_handle,
             apr_pool_t *pool)
{
  apr_file_t *null_handle;
  apr_status_t apr_err;
  svn_error_t *err;
  apr_proc_t cmd_proc = {0};
  apr_pool_t *cmd_pool;
  apr_hash_t *hook_env = ((void*)0);

  if (result)
    {
      null_handle = ((void*)0);
    }
  else
    {

        apr_err = apr_file_open(&null_handle, SVN_NULL_DEVICE_NAME, APR_WRITE,
                                APR_OS_DEFAULT, pool);
        if (apr_err)
          return svn_error_wrap_apr
            (apr_err, _("Can't create null stdout for hook '%s'"), cmd);
    }



  cmd_pool = svn_pool_create(pool);



  if (hooks_env)
    {
      hook_env = svn_hash_gets(hooks_env, name);
      if (hook_env == ((void*)0))
        hook_env = svn_hash_gets(hooks_env,
                                 SVN_REPOS__HOOKS_ENV_DEFAULT_SECTION);
    }

  err = svn_io_start_cmd3(&cmd_proc, ".", cmd, args,
                          env_from_env_hash(hook_env, pool, pool),
                          FALSE, FALSE, stdin_handle, result != ((void*)0),
                          null_handle, TRUE, ((void*)0), cmd_pool);
  if (!err)
    err = check_hook_result(name, cmd, &cmd_proc, cmd_proc.err, pool);
  else
    {

      err = svn_error_createf(SVN_ERR_REPOS_BAD_ARGS, err,
                              _("Failed to start '%s' hook"), cmd);
    }




  if (!err && result)
    {
      svn_stringbuf_t *native_stdout;
      err = svn_stringbuf_from_aprfile(&native_stdout, cmd_proc.out, pool);
      if (!err)
        *result = svn_stringbuf__morph_into_string(native_stdout);
    }


  svn_pool_destroy(cmd_pool);


  if (null_handle)
    {
      apr_err = apr_file_close(null_handle);
      if (!err && apr_err)
        return svn_error_wrap_apr(apr_err, _("Error closing null file"));
    }

  return svn_error_trace(err);
}
