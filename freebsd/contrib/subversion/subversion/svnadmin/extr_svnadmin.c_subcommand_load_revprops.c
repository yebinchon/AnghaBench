
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_repos_t ;
struct TYPE_7__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
struct svnadmin_opt_state {scalar_t__ quiet; int normalize_props; int ignore_dates; int bypass_prop_validation; scalar_t__ file; int repository_path; } ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_BAD_PROPERTY_VALUE ;
 int SVN_ERR_BAD_PROPERTY_VALUE_EOL ;
 int TRUE ;
 int _ (char*) ;
 int check_cancel ;
 int get_load_range (int *,int *,struct svnadmin_opt_state*) ;
 int open_repos (int **,int ,struct svnadmin_opt_state*,int *) ;
 int parse_args (int *,int *,int ,int ,int *) ;
 int * recode_stream_create (int ,int *) ;
 int * repos_notify_handler ;
 int stdout ;
 scalar_t__ svn_error_find_cause (TYPE_1__*,int ) ;
 TYPE_1__* svn_error_quick_wrap (TYPE_1__*,int ) ;
 TYPE_1__* svn_repos_load_fs_revprops (int *,int *,int ,int ,int,int ,int ,int *,int *,int ,int *,int *) ;
 int svn_stream_for_stdin2 (int **,int ,int *) ;
 int svn_stream_open_readonly (int **,scalar_t__,int *,int *) ;

__attribute__((used)) static svn_error_t *
subcommand_load_revprops(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{
  svn_error_t *err;
  struct svnadmin_opt_state *opt_state = baton;
  svn_repos_t *repos;
  svn_revnum_t lower, upper;
  svn_stream_t *in_stream;

  svn_stream_t *feedback_stream = ((void*)0);


  SVN_ERR(parse_args(((void*)0), os, 0, 0, pool));



  SVN_ERR(get_load_range(&lower, &upper, opt_state));

  SVN_ERR(open_repos(&repos, opt_state->repository_path, opt_state, pool));


  if (opt_state->file)
    SVN_ERR(svn_stream_open_readonly(&in_stream, opt_state->file,
                                     pool, pool));
  else
    SVN_ERR(svn_stream_for_stdin2(&in_stream, TRUE, pool));


  if (! opt_state->quiet)
    feedback_stream = recode_stream_create(stdout, pool);

  err = svn_repos_load_fs_revprops(repos, in_stream, lower, upper,
                                   !opt_state->bypass_prop_validation,
                                   opt_state->ignore_dates,
                                   opt_state->normalize_props,
                                   opt_state->quiet ? ((void*)0)
                                                    : repos_notify_handler,
                                   feedback_stream, check_cancel, ((void*)0), pool);

  if (svn_error_find_cause(err, SVN_ERR_BAD_PROPERTY_VALUE_EOL))
    {
      return svn_error_quick_wrap(err,
                                  _("A property with invalid line ending "
                                    "found in dumpstream; consider using "
                                    "--normalize-props while loading."));
    }
  else if (err && err->apr_err == SVN_ERR_BAD_PROPERTY_VALUE)
    {
      return svn_error_quick_wrap(err,
                                  _("Invalid property value found in "
                                    "dumpstream; consider repairing the "
                                    "source or using --bypass-prop-validation "
                                    "while loading."));
    }

  return err;
}
