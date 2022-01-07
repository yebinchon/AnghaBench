
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_repos_t ;
typedef int svn_error_t ;
struct svnadmin_opt_state {int repository_path; } ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_MALFUNCTION () ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int crashtest_malfunction_handler ;
 int open_repos (int **,int ,struct svnadmin_opt_state*,int *) ;
 int svn_cmdline_printf (int *,int ,int ) ;
 int svn_dirent_local_style (int ,int *) ;
 int svn_error_set_malfunction_handler (int ) ;

__attribute__((used)) static svn_error_t *
subcommand_crashtest(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{
  struct svnadmin_opt_state *opt_state = baton;
  svn_repos_t *repos;

  (void)svn_error_set_malfunction_handler(crashtest_malfunction_handler);
  SVN_ERR(open_repos(&repos, opt_state->repository_path, opt_state, pool));
  SVN_ERR(svn_cmdline_printf(pool,
                             _("Successfully opened repository '%s'.\n"
                               "Will now crash to simulate a crashing "
                               "server process.\n"),
                             svn_dirent_local_style(opt_state->repository_path,
                                                    pool)));
  SVN_ERR_MALFUNCTION();


  return SVN_NO_ERROR;
}
