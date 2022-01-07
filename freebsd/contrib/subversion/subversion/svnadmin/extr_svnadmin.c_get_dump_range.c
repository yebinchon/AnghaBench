
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_revnum_t ;
typedef int svn_repos_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct svnadmin_opt_state {int end_revision; int start_revision; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_CL_ARG_PARSING_ERROR ;
 scalar_t__ SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int get_revnum (scalar_t__*,int *,scalar_t__,int *,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_fs_youngest_rev (scalar_t__*,int *,int *) ;
 int * svn_repos_fs (int *) ;

__attribute__((used)) static svn_error_t *
get_dump_range(svn_revnum_t *lower,
               svn_revnum_t *upper,
               svn_repos_t *repos,
               struct svnadmin_opt_state *opt_state,
               apr_pool_t *scratch_pool)
{
  svn_fs_t *fs;
  svn_revnum_t youngest;

  *lower = SVN_INVALID_REVNUM;
  *upper = SVN_INVALID_REVNUM;

  fs = svn_repos_fs(repos);
  SVN_ERR(svn_fs_youngest_rev(&youngest, fs, scratch_pool));


  SVN_ERR(get_revnum(lower, &opt_state->start_revision,
                     youngest, repos, scratch_pool));
  SVN_ERR(get_revnum(upper, &opt_state->end_revision,
                     youngest, repos, scratch_pool));


  if (*lower == SVN_INVALID_REVNUM)
    {
      *lower = 0;
      *upper = youngest;
    }
  else if (*upper == SVN_INVALID_REVNUM)
    {
      *upper = *lower;
    }

  if (*lower > *upper)
    return svn_error_create(SVN_ERR_CL_ARG_PARSING_ERROR, ((void*)0),
       _("First revision cannot be higher than second"));

  return SVN_NO_ERROR;
}
