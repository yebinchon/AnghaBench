
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_BASE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int svn_error_compose (int *,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_quick_wrap (int *,int ) ;

__attribute__((used)) static svn_error_t *
reconcile_errors(svn_error_t *commit_err,
                 svn_error_t *unlock_err,
                 svn_error_t *bump_err,
                 apr_pool_t *pool)
{
  svn_error_t *err;


  if (! (commit_err || unlock_err || bump_err))
    return SVN_NO_ERROR;



  if (commit_err)
    {
      commit_err = svn_error_quick_wrap
        (commit_err, _("Commit failed (details follow):"));
      err = commit_err;
    }



  else
    err = svn_error_create(SVN_ERR_BASE, ((void*)0),
                           _("Commit succeeded, but other errors follow:"));


  if (unlock_err)
    {

      unlock_err = svn_error_quick_wrap
        (unlock_err, _("Error unlocking locked dirs (details follow):"));


      svn_error_compose(err, unlock_err);
    }


  if (bump_err)
    {

      bump_err = svn_error_quick_wrap
        (bump_err, _("Error bumping revisions post-commit (details follow):"));


      svn_error_compose(err, bump_err);
    }

  return err;
}
