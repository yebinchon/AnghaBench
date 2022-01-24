#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_txn_t ;
struct TYPE_13__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_editor_t ;
struct edit_baton {int /*<<< orphan*/ * txn; scalar_t__ completed; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_FS_CONFLICT ; 
 int /*<<< orphan*/  SVN_ERR_FS_INCORRECT_EDITOR_COMPLETION ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* SVN_NO_ERROR ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 struct edit_baton* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC11(svn_revnum_t *revision,
                      svn_error_t **post_commit_err,
                      const char **conflict_path,
                      svn_editor_t *editor,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  struct edit_baton *eb = FUNC4(editor);
  const char *inner_conflict_path;
  svn_error_t *err = NULL;

  /* make sure people are using the correct sequencing.  */
  if (eb->completed)
    return FUNC7(SVN_ERR_FS_INCORRECT_EDITOR_COMPLETION,
                            NULL, NULL);

  *revision = SVN_INVALID_REVNUM;
  *post_commit_err = NULL;
  *conflict_path = NULL;

  /* Clean up internal resources (eg. eb->root). This also allows the
     editor infrastructure to know this editor is "complete".  */
  err = FUNC3(editor);
  if (err)
    {
      svn_fs_txn_t *txn = eb->txn;

      eb->txn = NULL;
      return FUNC8(FUNC6(
                  err,
                  FUNC9(txn, scratch_pool)));
    }

  /* Note: docco for svn_fs_commit_txn() states that CONFLICT_PATH will
     be allocated in the txn's pool. But it lies. Regardless, we want
     it placed into RESULT_POOL.  */

  err = FUNC10(&inner_conflict_path,
                          revision,
                          eb->txn,
                          scratch_pool);
  if (FUNC1(*revision))
    {
      if (err)
        {
          /* Case 3. ERR is a post-commit (cleanup) error.  */

          /* Pass responsibility via POST_COMMIT_ERR.  */
          *post_commit_err = err;
          err = SVN_NO_ERROR;
        }
      /* else: Case 1.  */
    }
  else
    {
      FUNC0(err != NULL);
      if (err->apr_err == SVN_ERR_FS_CONFLICT)
        {
          /* Case 2.  */

          /* Copy this into the correct pool (see note above).  */
          *conflict_path = FUNC2(result_pool, inner_conflict_path);

          /* Return success. The caller should inspect CONFLICT_PATH to
             determine this particular case.  */
          FUNC5(err);
          err = SVN_NO_ERROR;
        }
      /* else: Case 4.  */

      /* Abort the TXN. Nobody wants to use it.  */
      /* ### should we examine the error and attempt svn_fs_purge_txn() ?  */
      err = FUNC6(
        err,
        FUNC9(eb->txn, scratch_pool));
    }

  /* For safety, clear the now-useless txn.  */
  eb->txn = NULL;

  return FUNC8(err);
}