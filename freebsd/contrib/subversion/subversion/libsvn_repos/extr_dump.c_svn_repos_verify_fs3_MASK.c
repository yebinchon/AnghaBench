#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_repos_verify_callback_t ;
typedef  int /*<<< orphan*/  svn_repos_t ;
struct TYPE_14__ {scalar_t__ revision; } ;
typedef  TYPE_1__ svn_repos_notify_t ;
typedef  int /*<<< orphan*/  (* svn_repos_notify_func_t ) (void*,TYPE_1__*,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/ * svn_fs_progress_notify_func_t ;
struct TYPE_15__ {scalar_t__ apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct verify_fs_notify_func_baton_t {void* notify; void* notify_baton; int /*<<< orphan*/  (* notify_func ) (void*,TYPE_1__*,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_CANCELLED ; 
 int /*<<< orphan*/  SVN_ERR_REPOS_BAD_ARGS ; 
 scalar_t__ SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_3__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct verify_fs_notify_func_baton_t* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,TYPE_3__*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 TYPE_3__* FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *,struct verify_fs_notify_func_baton_t*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 void* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_repos_notify_verify_end ; 
 int /*<<< orphan*/  svn_repos_notify_verify_rev_end ; 
 int /*<<< orphan*/  svn_repos_notify_verify_rev_structure ; 
 int /*<<< orphan*/ * verify_fs_notify_func ; 
 TYPE_3__* FUNC17 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/  (*) (void*,TYPE_1__*,int /*<<< orphan*/ *),void*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC18(svn_repos_t *repos,
                     svn_revnum_t start_rev,
                     svn_revnum_t end_rev,
                     svn_boolean_t check_normalization,
                     svn_boolean_t metadata_only,
                     svn_repos_notify_func_t notify_func,
                     void *notify_baton,
                     svn_repos_verify_callback_t verify_callback,
                     void *verify_baton,
                     svn_cancel_func_t cancel_func,
                     void *cancel_baton,
                     apr_pool_t *pool)
{
  svn_fs_t *fs = FUNC15(repos);
  svn_revnum_t youngest;
  svn_revnum_t rev;
  apr_pool_t *iterpool = FUNC13(pool);
  svn_repos_notify_t *notify;
  svn_fs_progress_notify_func_t verify_notify = NULL;
  struct verify_fs_notify_func_baton_t *verify_notify_baton = NULL;
  svn_error_t *err;

  /* Make sure we catch up on the latest revprop changes.  This is the only
   * time we will refresh the revprop data in this query. */
  FUNC0(FUNC9(fs, pool));

  /* Determine the current youngest revision of the filesystem. */
  FUNC0(FUNC11(&youngest, fs, pool));

  /* Use default vals if necessary. */
  if (! FUNC1(start_rev))
    start_rev = 0;
  if (! FUNC1(end_rev))
    end_rev = youngest;

  /* Validate the revisions. */
  if (start_rev > end_rev)
    return FUNC5(SVN_ERR_REPOS_BAD_ARGS, NULL,
                             FUNC2("Start revision %ld"
                               " is greater than end revision %ld"),
                             start_rev, end_rev);
  if (end_rev > youngest)
    return FUNC5(SVN_ERR_REPOS_BAD_ARGS, NULL,
                             FUNC2("End revision %ld is invalid "
                               "(youngest revision is %ld)"),
                             end_rev, youngest);

  /* Create a notify object that we can reuse within the loop and a
     forwarding structure for notifications from inside svn_fs_verify(). */
  if (notify_func)
    {
      notify = FUNC16(svn_repos_notify_verify_rev_end, pool);

      verify_notify = verify_fs_notify_func;
      verify_notify_baton = FUNC3(pool, sizeof(*verify_notify_baton));
      verify_notify_baton->notify_func = notify_func;
      verify_notify_baton->notify_baton = notify_baton;
      verify_notify_baton->notify
        = FUNC16(svn_repos_notify_verify_rev_structure, pool);
    }

  /* Verify global metadata and backend-specific data first. */
  err = FUNC10(FUNC8(fs, pool), FUNC7(fs, pool),
                      start_rev, end_rev,
                      verify_notify, verify_notify_baton,
                      cancel_func, cancel_baton, pool);

  if (err && err->apr_err == SVN_ERR_CANCELLED)
    {
      return FUNC6(err);
    }
  else if (err)
    {
      FUNC0(FUNC4(SVN_INVALID_REVNUM, err, verify_callback,
                           verify_baton, iterpool));
    }

  if (!metadata_only)
    for (rev = start_rev; rev <= end_rev; rev++)
      {
        FUNC12(iterpool);

        /* Wrapper function to catch the possible errors. */
        err = FUNC17(fs, rev, notify_func, notify_baton,
                                  start_rev, check_normalization,
                                  cancel_func, cancel_baton,
                                  iterpool);

        if (err && err->apr_err == SVN_ERR_CANCELLED)
          {
            return FUNC6(err);
          }
        else if (err)
          {
            FUNC0(FUNC4(rev, err, verify_callback, verify_baton,
                                 iterpool));
          }
        else if (notify_func)
          {
            /* Tell the caller that we're done with this revision. */
            notify->revision = rev;
            notify_func(notify_baton, notify, iterpool);
          }
      }

  /* We're done. */
  if (notify_func)
    {
      notify = FUNC16(svn_repos_notify_verify_end, iterpool);
      notify_func(notify_baton, notify, iterpool);
    }

  FUNC14(iterpool);

  return SVN_NO_ERROR;
}