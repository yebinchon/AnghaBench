#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  scalar_t__ svn_fs_node_relation_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CONFLICT ; 
 int /*<<< orphan*/  SVN_ERR_FS_OUT_OF_DATE ; 
 int /*<<< orphan*/  SVN_ERR_INCORRECT_PARAMS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_fs_node_unchanged ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(svn_fs_root_t *txn_root,
           const char *fspath,
           svn_revnum_t revision,
           apr_pool_t *scratch_pool)
{
  svn_revnum_t created_rev;

  /* Out-of-dateness check:  compare the created-rev of the node
     in the txn against the created-rev of FSPATH.  */
  FUNC0(FUNC5(&created_rev, txn_root, fspath,
                                  scratch_pool));

  /* Uncommitted nodes (eg. a descendant of a copy/move destination)
     have no (committed) revision number. Let the caller go ahead and
     modify these nodes.

     Note: strictly speaking, they might be performing an "illegal" edit
     in certain cases, but let's just assume they're Good Little Boys.

     If CREATED_REV is invalid, that means it's already mutable in the
     txn, which means it has already passed this out-of-dateness check.
     (Usually, this happens when looking at a parent directory of an
     already-modified node)  */
  if (!FUNC1(created_rev))
    return SVN_NO_ERROR;

  /* If the node is immutable (has a revision), then the caller should
     have supplied a valid revision number [that they expect to change].
     The checks further below will determine the out-of-dateness of the
     specified revision.  */
  /* ### ugh. descendants of copy/move destinations carry along
     ### their original immutable state and (thus) a valid CREATED_REV.
     ### but they are logically uncommitted, so the caller will pass
     ### SVN_INVALID_REVNUM. (technically, the caller could provide
     ### ORIGINAL_REV, but that is semantically incorrect for the Ev2
     ### API).
     ###
     ### for now, we will assume the caller knows what they are doing
     ### and an invalid revision implies such a descendant. in the
     ### future, we could examine the ancestor chain looking for a
     ### copy/move-here node and allow the modification (and the
     ### converse: if no such ancestor, the caller must specify the
     ### correct/intended revision to modify).
  */
#if 1
  if (!FUNC1(revision))
    return SVN_NO_ERROR;
#else
  if (!SVN_IS_VALID_REVNUM(revision))
    /* ### use a custom error code?  */
    return svn_error_createf(SVN_ERR_INCORRECT_PARAMS, NULL,
                             _("Revision for modifying '%s' is required"),
                             fspath);
#endif

  if (revision < created_rev)
    {
      /* We asked to change a node that is *older* than what we found
         in the transaction. The client is out of date.  */
      return FUNC3(SVN_ERR_FS_OUT_OF_DATE, NULL,
                               FUNC2("'%s' is out of date; try updating"),
                               fspath);
    }

  if (revision > created_rev)
    {
      /* We asked to change a node that is *newer* than what we found
         in the transaction. Given that the transaction was based off
         of 'youngest', then either:
         - the caller asked to modify a future node
         - the caller has committed more revisions since this txn
         was constructed, and is asking to modify a node in one
         of those new revisions.
         In either case, the node may not have changed in those new
         revisions; use the node's ID to determine this case.  */
      svn_fs_root_t *rev_root;
      svn_fs_node_relation_t relation;

      /* Get the ID from the future/new revision.  */
      FUNC0(FUNC7(&rev_root, FUNC8(txn_root),
                                   revision, scratch_pool));
      FUNC0(FUNC6(&relation, txn_root, fspath, rev_root,
                                   fspath, scratch_pool));
      FUNC4(rev_root);

      /* Has the target node changed in the future?  */
      if (relation != svn_fs_node_unchanged)
        {
          /* Restarting the commit will base the txn on the future/new
             revision, allowing the modification at REVISION.  */
          /* ### use a custom error code  */
          return FUNC3(SVN_ERR_FS_CONFLICT, NULL,
                                   FUNC2("'%s' has been modified since the "
                                     "commit began (restart the commit)"),
                                   fspath);
        }
    }

  return SVN_NO_ERROR;
}