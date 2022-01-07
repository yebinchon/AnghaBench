
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct edit_baton {TYPE_1__* repos; int commit_callback_baton; int commit_callback; int * txn; int txn_aborted; int * txn_root; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int fs; } ;


 int SVN_ERR_REPOS_BAD_ARGS ;
 int SVN_INVALID_REVNUM ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int TRUE ;
 int invoke_commit_cb (int ,int ,int ,int ,char const*,int *) ;
 int svn_error_clear (int *) ;
 int svn_error_compose_create (int *,int ) ;
 int * svn_error_create (int ,int *,char*) ;
 int * svn_error_trace (int ) ;
 int svn_fs_abort_txn (int *,int *) ;
 int svn_fs_close_root (int *) ;
 char* svn_repos__post_commit_error_str (int *,int *) ;
 int * svn_repos_fs_commit_txn (char const**,TYPE_1__*,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
close_edit(void *edit_baton,
           apr_pool_t *pool)
{
  struct edit_baton *eb = edit_baton;
  svn_revnum_t new_revision = SVN_INVALID_REVNUM;
  svn_error_t *err;
  const char *conflict;
  const char *post_commit_err = ((void*)0);




  if (! eb->txn)
    return svn_error_create(SVN_ERR_REPOS_BAD_ARGS, ((void*)0),
                            "No valid transaction supplied to close_edit");


  err = svn_repos_fs_commit_txn(&conflict, eb->repos,
                                &new_revision, eb->txn, pool);

  if (SVN_IS_VALID_REVNUM(new_revision))
    {




      if (eb->txn_root)
        svn_fs_close_root(eb->txn_root);

      if (err)
        {




          post_commit_err = svn_repos__post_commit_error_str(err, pool);
          svn_error_clear(err);
        }





      eb->txn = ((void*)0);
      eb->txn_root = ((void*)0);
    }
  else
    {
      eb->txn_aborted = TRUE;

      return svn_error_trace(
                svn_error_compose_create(err,
                                         svn_fs_abort_txn(eb->txn, pool)));
    }
  return svn_error_trace(invoke_commit_cb(eb->commit_callback,
                                          eb->commit_callback_baton,
                                          eb->repos->fs,
                                          new_revision,
                                          post_commit_err,
                                          pool));
}
