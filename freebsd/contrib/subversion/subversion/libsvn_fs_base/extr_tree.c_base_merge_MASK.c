#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_txn_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_17__ {int /*<<< orphan*/  txn; int /*<<< orphan*/ * fs; int /*<<< orphan*/  is_txn_root; } ;
typedef  TYPE_1__ svn_fs_root_t ;
struct TYPE_18__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
struct merge_args {TYPE_3__* conflict; int /*<<< orphan*/ * txn; int /*<<< orphan*/ * ancestor_node; int /*<<< orphan*/ * source_node; int /*<<< orphan*/ * node; TYPE_1__* root; } ;
struct get_root_args {TYPE_3__* conflict; int /*<<< orphan*/ * txn; int /*<<< orphan*/ * ancestor_node; int /*<<< orphan*/ * source_node; int /*<<< orphan*/ * node; TYPE_1__* root; } ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_19__ {char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ SVN_ERR_FS_CONFLICT ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 TYPE_2__* FUNC1 (TYPE_1__*) ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct merge_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txn_body_get_root ; 
 int /*<<< orphan*/  txn_body_merge ; 

__attribute__((used)) static svn_error_t *
FUNC8(const char **conflict_p,
           svn_fs_root_t *source_root,
           const char *source_path,
           svn_fs_root_t *target_root,
           const char *target_path,
           svn_fs_root_t *ancestor_root,
           const char *ancestor_path,
           apr_pool_t *pool)
{
  dag_node_t *source, *ancestor;
  struct get_root_args get_root_args;
  struct merge_args merge_args;
  svn_fs_txn_t *txn;
  svn_error_t *err;
  svn_fs_t *fs;

  if (! target_root->is_txn_root)
    return FUNC1(target_root);

  /* Paranoia. */
  fs = ancestor_root->fs;
  if ((source_root->fs != fs) || (target_root->fs != fs))
    {
      return FUNC3
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
  get_root_args.root = ancestor_root;
  FUNC0(FUNC6(fs, txn_body_get_root, &get_root_args,
                                 FALSE, pool));
  ancestor = get_root_args.node;

  /* Get the source node. */
  get_root_args.root = source_root;
  FUNC0(FUNC6(fs, txn_body_get_root, &get_root_args,
                                 FALSE, pool));
  source = get_root_args.node;

  /* Open a txn for the txn root into which we're merging. */
  FUNC0(FUNC5(&txn, fs, target_root->txn, pool));

  /* Merge changes between ANCESTOR and SOURCE into TXN. */
  merge_args.source_node = source;
  merge_args.ancestor_node = ancestor;
  merge_args.txn = txn;
  merge_args.conflict = FUNC7(pool);
  err = FUNC6(fs, txn_body_merge, &merge_args, FALSE, pool);
  if (err)
    {
      if ((err->apr_err == SVN_ERR_FS_CONFLICT) && conflict_p)
        *conflict_p = merge_args.conflict->data;
      return FUNC4(err);
    }

  return SVN_NO_ERROR;
}