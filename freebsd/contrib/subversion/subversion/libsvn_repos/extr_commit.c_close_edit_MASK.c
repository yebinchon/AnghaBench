#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct edit_baton {TYPE_1__* repos; int /*<<< orphan*/  commit_callback_baton; int /*<<< orphan*/  commit_callback; int /*<<< orphan*/ * txn; int /*<<< orphan*/  txn_aborted; int /*<<< orphan*/ * txn_root; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_2__ {int /*<<< orphan*/  fs; } ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_REPOS_BAD_ARGS ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char const**,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(void *edit_baton,
           apr_pool_t *pool)
{
  struct edit_baton *eb = edit_baton;
  svn_revnum_t new_revision = SVN_INVALID_REVNUM;
  svn_error_t *err;
  const char *conflict;
  const char *post_commit_err = NULL;

  /* If no transaction has been created (ie. if open_root wasn't
     called before close_edit), abort the operation here with an
     error. */
  if (! eb->txn)
    return FUNC4(SVN_ERR_REPOS_BAD_ARGS, NULL,
                            "No valid transaction supplied to close_edit");

  /* Commit. */
  err = FUNC9(&conflict, eb->repos,
                                &new_revision, eb->txn, pool);

  if (FUNC0(new_revision))
    {
      /* The actual commit succeeded, i.e. the transaction does no longer
         exist and we can't use txn_root for conflict resolution etc.

         Since close_edit is supposed to release resources, do it now. */
      if (eb->txn_root)
        FUNC7(eb->txn_root);

      if (err)
        {
          /* If the error was in post-commit, then the commit itself
             succeeded.  In which case, save the post-commit warning
             (to be reported back to the client, who will probably
             display it as a warning) and clear the error. */
          post_commit_err = FUNC8(err, pool);
          FUNC2(err);
        }

      /* Make sure a future abort doesn't perform
         any work. This may occur if the commit
         callback returns an error! */

      eb->txn = NULL;
      eb->txn_root = NULL;
    }
  else
    {
      /* ### todo: we should check whether it really was a conflict,
         and return the conflict info if so? */

      /* If the commit failed, it's *probably* due to a conflict --
         that is, the txn being out-of-date.  The filesystem gives us
         the ability to continue diddling the transaction and try
         again; but let's face it: that's not how the cvs or svn works
         from a user interface standpoint.  Thus we don't make use of
         this fs feature (for now, at least.)

         So, in a nutshell: svn commits are an all-or-nothing deal.
         Each commit creates a new fs txn which either succeeds or is
         aborted completely.  No second chances;  the user simply
         needs to update and commit again  :) */

      eb->txn_aborted = TRUE;

      return FUNC5(
                FUNC3(err,
                                         FUNC6(eb->txn, pool)));
    }

  /* At this point, the post-commit error has been converted to a string.
     That information will be passed to a callback, if provided. If the
     callback invocation fails in some way, that failure is returned here.
     IOW, the post-commit error information is low priority compared to
     other gunk here.  */

  /* Pass new revision information to the caller's callback. */
  return FUNC5(FUNC1(eb->commit_callback,
                                          eb->commit_callback_baton,
                                          eb->repos->fs,
                                          new_revision,
                                          post_commit_err,
                                          pool));
}