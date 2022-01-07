
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_repos_t ;
struct TYPE_14__ {int apr_err; } ;
typedef TYPE_1__ svn_error_t ;
struct svnadmin_opt_state {int repository_path; int wait; } ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;


 int APR_STATUS_IS_EAGAIN (int ) ;
 int FALSE ;
 int SVN_ERR (TYPE_1__*) ;
 int SVN_ERR_REPOS_LOCKED ;
 TYPE_1__* SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int check_cancel ;
 TYPE_1__* open_repos (int **,int ,struct svnadmin_opt_state*,int *) ;
 TYPE_1__* parse_args (int *,int *,int ,int ,int *) ;
 int repos_notify_handler ;
 int stdout ;
 int svn_cmdline__disable_cancellation_handler () ;
 TYPE_1__* svn_cmdline_fflush (int ) ;
 TYPE_1__* svn_cmdline_printf (int *,int ,...) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_create (int ,int *,int ) ;
 TYPE_1__* svn_fs_youngest_rev (int *,int ,int *) ;
 int svn_repos_fs (int *) ;
 TYPE_1__* svn_repos_recover4 (int ,int ,int ,int *,int ,int *,int *) ;
 TYPE_1__* svn_stream_for_stdout (int **,int *) ;

__attribute__((used)) static svn_error_t *
subcommand_recover(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{
  svn_revnum_t youngest_rev;
  svn_repos_t *repos;
  svn_error_t *err;
  struct svnadmin_opt_state *opt_state = baton;
  svn_stream_t *feedback_stream = ((void*)0);


  SVN_ERR(parse_args(((void*)0), os, 0, 0, pool));

  SVN_ERR(svn_stream_for_stdout(&feedback_stream, pool));




  svn_cmdline__disable_cancellation_handler();

  err = svn_repos_recover4(opt_state->repository_path, TRUE,
                           repos_notify_handler, feedback_stream,
                           check_cancel, ((void*)0), pool);
  if (err)
    {
      if (! APR_STATUS_IS_EAGAIN(err->apr_err))
        return err;
      svn_error_clear(err);
      if (! opt_state->wait)
        return svn_error_create(SVN_ERR_REPOS_LOCKED, ((void*)0),
                                _("Failed to get exclusive repository "
                                  "access; perhaps another process\n"
                                  "such as httpd, svnserve or svn "
                                  "has it open?"));
      SVN_ERR(svn_cmdline_printf(pool,
                                 _("Waiting on repository lock; perhaps"
                                   " another process has it open?\n")));
      SVN_ERR(svn_cmdline_fflush(stdout));
      SVN_ERR(svn_repos_recover4(opt_state->repository_path, FALSE,
                                 repos_notify_handler, feedback_stream,
                                 check_cancel, ((void*)0), pool));
    }

  SVN_ERR(svn_cmdline_printf(pool, _("\nRecovery completed.\n")));




  SVN_ERR(open_repos(&repos, opt_state->repository_path, opt_state, pool));
  SVN_ERR(svn_fs_youngest_rev(&youngest_rev, svn_repos_fs(repos), pool));
  SVN_ERR(svn_cmdline_printf(pool, _("The latest repos revision is %ld.\n"),
                             youngest_rev));

  return SVN_NO_ERROR;
}
