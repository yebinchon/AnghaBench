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
struct TYPE_14__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ trail_t ;
struct TYPE_15__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_16__ {char* id; int /*<<< orphan*/ * fs; } ;
typedef  TYPE_3__ svn_fs_txn_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct commit_args {int /*<<< orphan*/  new_rev; TYPE_3__* txn; } ;
typedef  int /*<<< orphan*/  dag_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_TXN_OUT_OF_DATE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char const*,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC14(void *baton, trail_t *trail)
{
  struct commit_args *args = baton;

  svn_fs_txn_t *txn = args->txn;
  svn_fs_t *fs = txn->fs;
  const char *txn_name = txn->id;

  svn_revnum_t youngest_rev;
  const svn_fs_id_t *y_rev_root_id;
  dag_node_t *txn_base_root_node, *txn_root_node;

  /* Getting the youngest revision locks the revisions table until
     this trail is done. */
  FUNC0(FUNC12(&youngest_rev, fs, trail, trail->pool));

  /* If the root of the youngest revision is the same as txn's base,
     then no further merging is necessary and we can commit. */
  FUNC0(FUNC11(&y_rev_root_id, fs, youngest_rev,
                                    trail, trail->pool));
  FUNC0(FUNC7(&txn_base_root_node, fs, txn_name,
                                         trail, trail->pool));
  /* ### kff todo: it seems weird to grab the ID for one, and the node
     for the other.  We can certainly do the comparison we need, but
     it would be nice to grab the same type of information from the
     start, instead of having to transform one of them. */
  if (! FUNC9(y_rev_root_id,
                           FUNC6(txn_base_root_node)))
    {
      svn_string_t *id_str = FUNC10(y_rev_root_id,
                                                     trail->pool);
      return FUNC2
        (SVN_ERR_FS_TXN_OUT_OF_DATE, NULL,
         FUNC1("Transaction '%s' out-of-date with respect to revision '%s'"),
         txn_name, id_str->data);
    }

  /* Locks may have been added (or stolen) between the calling of
     previous svn_fs.h functions and svn_fs_commit_txn(), so we need
     to re-examine every changed-path in the txn and re-verify all
     discovered locks. */
  FUNC0(FUNC13(txn_name, trail, trail->pool));

  /* Ensure every txn has a mutable root as then the new revision will
     have a distinct root node-revision-id.  This is necessary as
     future transactions use the root node-revision-id as a proxy for
     the transaction base revision. */
  FUNC0(FUNC8(&txn_root_node, fs, txn_name,
                                    trail, trail->pool));
  if (!FUNC3(txn_root_node, txn->id))
    {
      dag_node_t *clone;
      FUNC0(FUNC4(&clone, fs, txn->id,
                                          trail, trail->pool));
    }

  /* Else, commit the txn. */
  return FUNC5(&(args->new_rev), txn, trail,
                                     trail->pool);
}