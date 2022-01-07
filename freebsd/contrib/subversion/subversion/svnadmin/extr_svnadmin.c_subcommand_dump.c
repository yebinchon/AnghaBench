
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_repos_t ;
typedef int svn_error_t ;
struct svnadmin_opt_state {int quiet; int use_deltas; int incremental; scalar_t__ exclude; scalar_t__ include; int glob; scalar_t__ file; int repository_path; } ;
struct dump_filter_baton_t {scalar_t__ prefixes; int do_exclude; int glob; int member_0; } ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;
typedef int apr_file_t ;


 int APR_BUFFERED ;
 int APR_CREATE ;
 int APR_OS_DEFAULT ;
 int APR_TRUNCATE ;
 int APR_WRITE ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_CL_ARG_PARSING_ERROR ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int check_cancel ;
 int * dump_filter_func ;
 int get_dump_range (int *,int *,int *,struct svnadmin_opt_state*,int *) ;
 int open_repos (int **,int ,struct svnadmin_opt_state*,int *) ;
 int parse_args (int *,int *,int ,int ,int *) ;
 int * recode_stream_create (int ,int *) ;
 int * repos_notify_handler ;
 int stderr ;
 int * svn_error_createf (int ,int *,int ) ;
 int svn_io_file_open (int **,scalar_t__,int,int ,int *) ;
 int svn_repos_dump_fs4 (int *,int *,int ,int ,int ,int ,int ,int ,int *,int *,int *,struct dump_filter_baton_t*,int ,int *,int *) ;
 int svn_stream_for_stdout (int **,int *) ;
 int * svn_stream_from_aprfile2 (int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
subcommand_dump(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{
  struct svnadmin_opt_state *opt_state = baton;
  svn_repos_t *repos;
  svn_stream_t *out_stream;
  svn_revnum_t lower, upper;
  svn_stream_t *feedback_stream = ((void*)0);
  struct dump_filter_baton_t filter_baton = {0};


  SVN_ERR(parse_args(((void*)0), os, 0, 0, pool));

  SVN_ERR(open_repos(&repos, opt_state->repository_path, opt_state, pool));
  SVN_ERR(get_dump_range(&lower, &upper, repos, opt_state, pool));


  if (opt_state->file)
    {
      apr_file_t *file;


      SVN_ERR(svn_io_file_open(&file, opt_state->file,
                               APR_WRITE | APR_CREATE | APR_TRUNCATE
                               | APR_BUFFERED, APR_OS_DEFAULT, pool));
      out_stream = svn_stream_from_aprfile2(file, FALSE, pool);
    }
  else
    SVN_ERR(svn_stream_for_stdout(&out_stream, pool));


  if (! opt_state->quiet)
    feedback_stream = recode_stream_create(stderr, pool);


  filter_baton.glob = opt_state->glob;

  if (opt_state->exclude && !opt_state->include)
    {
      filter_baton.prefixes = opt_state->exclude;
      filter_baton.do_exclude = TRUE;
    }
  else if (opt_state->include && !opt_state->exclude)
    {
      filter_baton.prefixes = opt_state->include;
      filter_baton.do_exclude = FALSE;
    }
  else if (opt_state->include && opt_state->exclude)
    {
      return svn_error_createf(SVN_ERR_CL_ARG_PARSING_ERROR, ((void*)0),
                               _("'--exclude' and '--include' options "
                                 "cannot be used simultaneously"));
    }

  SVN_ERR(svn_repos_dump_fs4(repos, out_stream, lower, upper,
                             opt_state->incremental, opt_state->use_deltas,
                             TRUE, TRUE,
                             !opt_state->quiet ? repos_notify_handler : ((void*)0),
                             feedback_stream,
                             filter_baton.prefixes ? dump_filter_func : ((void*)0),
                             &filter_baton,
                             check_cancel, ((void*)0), pool));

  return SVN_NO_ERROR;
}
