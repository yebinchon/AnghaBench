#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {char* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  scalar_t__ svn_revnum_t ;
struct TYPE_26__ {scalar_t__ pack_after_commit; } ;
typedef  TYPE_2__ svn_fs_x__data_t ;
struct TYPE_27__ {scalar_t__ base_rev; TYPE_4__* fs; } ;
typedef  TYPE_3__ svn_fs_txn_t ;
struct TYPE_28__ {TYPE_2__* fsap_data; } ;
typedef  TYPE_4__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
struct TYPE_29__ {scalar_t__ apr_err; } ;
typedef  TYPE_5__ svn_error_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 scalar_t__ SVN_ERR_FS_CONFLICT ; 
 scalar_t__ SVN_ERR_FS_TXN_OUT_OF_DATE ; 
 scalar_t__ SVN_INVALID_REVNUM ; 
 TYPE_5__* SVN_NO_ERROR ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 TYPE_5__* FUNC4 (scalar_t__*,TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC6 (int /*<<< orphan*/ **,TYPE_4__*,scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC7 (scalar_t__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC12(const char **conflict_p,
                     svn_revnum_t *new_rev,
                     svn_fs_txn_t *txn,
                     apr_pool_t *pool)
{
  /* How do commits work in Subversion?
   *
   * When you're ready to commit, here's what you have:
   *
   *    1. A transaction, with a mutable tree hanging off it.
   *    2. A base revision, against which TXN_TREE was made.
   *    3. A latest revision, which may be newer than the base rev.
   *
   * The problem is that if latest != base, then one can't simply
   * attach the txn root as the root of the new revision, because that
   * would lose all the changes between base and latest.  It is also
   * not acceptable to insist that base == latest; in a busy
   * repository, commits happen too fast to insist that everyone keep
   * their entire tree up-to-date at all times.  Non-overlapping
   * changes should not interfere with each other.
   *
   * The solution is to merge the changes between base and latest into
   * the txn tree [see the function merge()].  The txn tree is the
   * only one of the three trees that is mutable, so it has to be the
   * one to adjust.
   *
   * You might have to adjust it more than once, if a new latest
   * revision gets committed while you were merging in the previous
   * one.  For example:
   *
   *    1. Jane starts txn T, based at revision 6.
   *    2. Someone commits (or already committed) revision 7.
   *    3. Jane's starts merging the changes between 6 and 7 into T.
   *    4. Meanwhile, someone commits revision 8.
   *    5. Jane finishes the 6-->7 merge.  T could now be committed
   *       against a latest revision of 7, if only that were still the
   *       latest.  Unfortunately, 8 is now the latest, so...
   *    6. Jane starts merging the changes between 7 and 8 into T.
   *    7. Meanwhile, no one commits any new revisions.  Whew.
   *    8. Jane commits T, creating revision 9, whose tree is exactly
   *       T's tree, except immutable now.
   *
   * Lather, rinse, repeat.
   */

  svn_error_t *err = SVN_NO_ERROR;
  svn_stringbuf_t *conflict = FUNC11(pool);
  svn_fs_t *fs = txn->fs;
  svn_fs_x__data_t *ffd = fs->fsap_data;

  /* Limit memory usage when the repository has a high commit rate and
     needs to run the following while loop multiple times.  The memory
     growth without an iteration pool is very noticeable when the
     transaction modifies a node that has 20,000 sibling nodes. */
  apr_pool_t *iterpool = FUNC9(pool);

  /* Initialize output params. */
  *new_rev = SVN_INVALID_REVNUM;
  if (conflict_p)
    *conflict_p = NULL;

  while (1729)
    {
      svn_revnum_t youngish_rev;
      svn_fs_root_t *youngish_root;
      dag_node_t *youngish_root_node;

      FUNC8(iterpool);

      /* Get the *current* youngest revision.  We call it "youngish"
         because new revisions might get committed after we've
         obtained it. */

      FUNC0(FUNC7(&youngish_rev, fs, iterpool));
      FUNC0(FUNC6(&youngish_root, fs, youngish_rev,
                                      iterpool));

      /* Get the dag node for the youngest revision.  Later we'll use
         it as the SOURCE argument to a merge, and if the merge
         succeeds, this youngest root node will become the new base
         root for the svn txn that was the target of the merge (but
         note that the youngest rev may have changed by then -- that's
         why we're careful to get this root in its own bdb txn
         here). */
      FUNC0(FUNC1(&youngish_root_node, youngish_root, iterpool,
                       iterpool));

      /* Try to merge.  If the merge succeeds, the base root node of
         TARGET's txn will become the same as youngish_root_node, so
         any future merges will only be between that node and whatever
         the root node of the youngest rev is by then. */
      err = FUNC2(NULL, youngish_root_node, txn, conflict, iterpool);
      if (err)
        {
          if ((err->apr_err == SVN_ERR_FS_CONFLICT) && conflict_p)
            *conflict_p = conflict->data;
          goto cleanup;
        }
      txn->base_rev = youngish_rev;

      /* Try to commit. */
      err = FUNC4(new_rev, fs, txn, iterpool);
      if (err && (err->apr_err == SVN_ERR_FS_TXN_OUT_OF_DATE))
        {
          /* Did someone else finish committing a new revision while we
             were in mid-merge or mid-commit?  If so, we'll need to
             loop again to merge the new changes in, then try to
             commit again.  Or if that's not what happened, then just
             return the error. */
          svn_revnum_t youngest_rev;
          FUNC0(FUNC7(&youngest_rev, fs, iterpool));
          if (youngest_rev == youngish_rev)
            goto cleanup;
          else
            FUNC3(err);
        }
      else if (err)
        {
          goto cleanup;
        }
      else
        {
          err = SVN_NO_ERROR;
          goto cleanup;
        }
    }

 cleanup:

  FUNC10(iterpool);

  FUNC0(err);

  if (ffd->pack_after_commit)
    {
      FUNC0(FUNC5(fs, 0, NULL, NULL, NULL, NULL, pool));
    }

  return SVN_NO_ERROR;
}