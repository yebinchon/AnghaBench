#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
struct TYPE_14__ {int /*<<< orphan*/ * fs; } ;
typedef  TYPE_1__ svn_fs_txn_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
struct TYPE_15__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
struct merge_args {scalar_t__ new_rev; TYPE_1__* txn; TYPE_3__* conflict; int /*<<< orphan*/ * source_node; int /*<<< orphan*/ * ancestor_node; int /*<<< orphan*/ * node; int /*<<< orphan*/ * root; } ;
struct get_root_args {scalar_t__ new_rev; TYPE_1__* txn; TYPE_3__* conflict; int /*<<< orphan*/ * source_node; int /*<<< orphan*/ * ancestor_node; int /*<<< orphan*/ * node; int /*<<< orphan*/ * root; } ;
struct commit_args {scalar_t__ new_rev; TYPE_1__* txn; TYPE_3__* conflict; int /*<<< orphan*/ * source_node; int /*<<< orphan*/ * ancestor_node; int /*<<< orphan*/ * node; int /*<<< orphan*/ * root; } ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_16__ {char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ SVN_ERR_FS_CONFLICT ; 
 scalar_t__ SVN_ERR_FS_TXN_OUT_OF_DATE ; 
 scalar_t__ SVN_INVALID_REVNUM ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct merge_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txn_body_commit ; 
 int /*<<< orphan*/  txn_body_get_root ; 
 int /*<<< orphan*/  txn_body_merge ; 

svn_error_t *
FUNC10(const char **conflict_p,
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

  svn_error_t *err;
  svn_fs_t *fs = txn->fs;
  apr_pool_t *subpool = FUNC7(pool);

  /* Initialize output params. */
  *new_rev = SVN_INVALID_REVNUM;
  if (conflict_p)
    *conflict_p = NULL;

  while (1729)
    {
      struct get_root_args get_root_args;
      struct merge_args merge_args;
      struct commit_args commit_args;
      svn_revnum_t youngish_rev;
      svn_fs_root_t *youngish_root;
      dag_node_t *youngish_root_node;

      FUNC6(subpool);

      /* Get the *current* youngest revision, in one short-lived
         Berkeley transaction.  (We don't want the revisions table
         locked while we do the main merge.)  We call it "youngish"
         because new revisions might get committed after we've
         obtained it. */

      FUNC0(FUNC5(&youngish_rev, fs, subpool));
      FUNC0(FUNC4(&youngish_root, fs, youngish_rev,
                                         subpool));

      /* Get the dag node for the youngest revision, also in one
         Berkeley transaction.  Later we'll use it as the SOURCE
         argument to a merge, and if the merge succeeds, this youngest
         root node will become the new base root for the svn txn that
         was the target of the merge (but note that the youngest rev
         may have changed by then -- that's why we're careful to get
         this root in its own bdb txn here). */
      get_root_args.root = youngish_root;
      FUNC0(FUNC3(fs, txn_body_get_root, &get_root_args,
                                     FALSE, subpool));
      youngish_root_node = get_root_args.node;

      /* Try to merge.  If the merge succeeds, the base root node of
         TARGET's txn will become the same as youngish_root_node, so
         any future merges will only be between that node and whatever
         the root node of the youngest rev is by then. */
      merge_args.ancestor_node = NULL;
      merge_args.source_node = youngish_root_node;
      merge_args.txn = txn;
      merge_args.conflict = FUNC9(pool); /* use pool */
      err = FUNC3(fs, txn_body_merge, &merge_args,
                                   FALSE, subpool);
      if (err)
        {
          if ((err->apr_err == SVN_ERR_FS_CONFLICT) && conflict_p)
            *conflict_p = merge_args.conflict->data;
          return FUNC2(err);
        }

      /* Try to commit. */
      commit_args.txn = txn;
      err = FUNC3(fs, txn_body_commit, &commit_args,
                                   FALSE, subpool);
      if (err && (err->apr_err == SVN_ERR_FS_TXN_OUT_OF_DATE))
        {
          /* Did someone else finish committing a new revision while we
             were in mid-merge or mid-commit?  If so, we'll need to
             loop again to merge the new changes in, then try to
             commit again.  Or if that's not what happened, then just
             return the error. */
          svn_revnum_t youngest_rev;
          svn_error_t *err2 = FUNC5(&youngest_rev, fs,
                                                        subpool);
          if (err2)
            {
              FUNC1(err);
              return FUNC2(err2);  /* err2 is bad,
                                                 it should not occur */
            }
          else if (youngest_rev == youngish_rev)
            return FUNC2(err);
          else
            FUNC1(err);
        }
      else if (err)
        {
          return FUNC2(err);
        }
      else
        {
          /* Set the return value -- our brand spankin' new revision! */
          *new_rev = commit_args.new_rev;
          break;
        }
    }

  FUNC8(subpool);
  return SVN_NO_ERROR;
}