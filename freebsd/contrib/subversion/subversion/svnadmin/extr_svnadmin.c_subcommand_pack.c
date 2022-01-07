
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_repos_t ;
typedef int svn_error_t ;
struct svnadmin_opt_state {int quiet; int repository_path; } ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;


 int SVN_ERR (int ) ;
 int check_cancel ;
 int open_repos (int **,int ,struct svnadmin_opt_state*,int *) ;
 int parse_args (int *,int *,int ,int ,int *) ;
 int * recode_stream_create (int ,int *) ;
 int * repos_notify_handler ;
 int stdout ;
 int * svn_error_trace (int ) ;
 int svn_repos_fs_pack2 (int *,int *,int *,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
subcommand_pack(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{
  struct svnadmin_opt_state *opt_state = baton;
  svn_repos_t *repos;
  svn_stream_t *feedback_stream = ((void*)0);


  SVN_ERR(parse_args(((void*)0), os, 0, 0, pool));

  SVN_ERR(open_repos(&repos, opt_state->repository_path, opt_state, pool));


  if (! opt_state->quiet)
    feedback_stream = recode_stream_create(stdout, pool);

  return svn_error_trace(
    svn_repos_fs_pack2(repos, !opt_state->quiet ? repos_notify_handler : ((void*)0),
                       feedback_stream, check_cancel, ((void*)0), pool));
}
