#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {char* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_fs_txn_t ;
struct TYPE_19__ {int /*<<< orphan*/  txn; int /*<<< orphan*/  fs; int /*<<< orphan*/  is_txn_root; } ;
typedef  TYPE_2__ svn_fs_root_t ;
struct TYPE_20__ {scalar_t__ apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_FS_CONFLICT ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 TYPE_3__* FUNC1 (TYPE_2__*) ; 
 TYPE_3__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(const char **conflict_p,
        svn_fs_root_t *source_root,
        const char *source_path,
        svn_fs_root_t *target_root,
        const char *target_path,
        svn_fs_root_t *ancestor_root,
        const char *ancestor_path,
        apr_pool_t *pool)
{
  dag_node_t *source, *ancestor;
  svn_fs_txn_t *txn;
  svn_error_t *err;
  svn_stringbuf_t *conflict = FUNC8(pool);

  if (! target_root->is_txn_root)
    return FUNC1(target_root);

  /* Paranoia. */
  if ((source_root->fs != ancestor_root->fs)
      || (target_root->fs != ancestor_root->fs))
    {
      return FUNC5
        (SVN_ERR_FS_CORRUPT, NULL,
         FUNC2("Bad merge; ancestor, source, and target not all in same fs"));
    }

  /* ### kff todo: is there any compelling reason to get the nodes in
     one db transaction?  Right now we don't; txn_body_get_root() gets
     one node at a time.  This will probably need to change:

     Jim Blandy <jimb@zwingli.cygnus.com> writes:
     > svn_fs_merge needs to be a single transaction, to protect it against
     > people deleting parents of nodes it's working on, etc.
  */

  /* Get the ancestor node. */
  FUNC0(FUNC3(&ancestor, ancestor_root, pool, pool));

  /* Get the source node. */
  FUNC0(FUNC3(&source, source_root, pool, pool));

  /* Open a txn for the txn root into which we're merging. */
  FUNC0(FUNC7(&txn, ancestor_root->fs, target_root->txn,
                             pool));

  /* Merge changes between ANCESTOR and SOURCE into TXN. */
  err = FUNC4(ancestor, source, txn, conflict, pool);
  if (err)
    {
      if ((err->apr_err == SVN_ERR_FS_CONFLICT) && conflict_p)
        *conflict_p = conflict->data;
      return FUNC6(err);
    }

  return SVN_NO_ERROR;
}