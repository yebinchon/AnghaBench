#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ trail_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct copied_from_args {int /*<<< orphan*/  result_rev; int /*<<< orphan*/ * result_path; int /*<<< orphan*/  path; TYPE_8__* root; } ;
typedef  int /*<<< orphan*/  dag_node_t ;
struct TYPE_11__ {scalar_t__ kind; int /*<<< orphan*/  src_txn_id; int /*<<< orphan*/ * src_path; int /*<<< orphan*/  dst_noderev_id; } ;
typedef  TYPE_2__ copy_t ;
struct TYPE_12__ {int /*<<< orphan*/ * fs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ copy_kind_real ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,TYPE_8__*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC9(void *baton, trail_t *trail)
{
  struct copied_from_args *args = baton;
  const svn_fs_id_t *node_id, *pred_id;
  dag_node_t *node;
  svn_fs_t *fs = args->root->fs;

  /* Clear the return variables. */
  args->result_path = NULL;
  args->result_rev = SVN_INVALID_REVNUM;

  /* Fetch the NODE in question. */
  FUNC0(FUNC1(&node, args->root, args->path, trail, trail->pool));
  node_id = FUNC3(node);

  /* Check the node's predecessor-ID.  If it doesn't have one, it
     isn't a copy. */
  FUNC0(FUNC4(&pred_id, node,
                                              trail, trail->pool));
  if (! pred_id)
    return SVN_NO_ERROR;

  /* If NODE's copy-ID is the same as that of its predecessor... */
  if (FUNC2(FUNC5(node_id),
             FUNC5(pred_id)) != 0)
    {
      /* ... then NODE was either the target of a copy operation,
         a copied subtree item.  We examine the actual copy record
         to determine which is the case.  */
      copy_t *copy;
      FUNC0(FUNC8(&copy, fs,
                                   FUNC5(node_id),
                                   trail, trail->pool));
      if ((copy->kind == copy_kind_real)
          && FUNC6(copy->dst_noderev_id, node_id))
        {
          args->result_path = copy->src_path;
          FUNC0(FUNC7(&(args->result_rev), fs,
                                                copy->src_txn_id,
                                                trail, trail->pool));
        }
    }
  return SVN_NO_ERROR;
}