#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_node_kind_t ;
struct TYPE_4__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct node_kind_args {int /*<<< orphan*/  kind; int /*<<< orphan*/  const* id; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const**,TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct node_kind_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txn_body_node_kind ; 

__attribute__((used)) static svn_error_t *
FUNC3(svn_node_kind_t *kind_p,
          svn_fs_root_t *root,
          const char *path,
          apr_pool_t *pool)
{
  struct node_kind_args args;
  const svn_fs_id_t *node_id;

  /* Get the node id. */
  FUNC0(FUNC1(&node_id, root, path, pool));

  /* Use the node id to get the real kind. */
  args.id = node_id;
  FUNC0(FUNC2(root->fs, txn_body_node_kind, &args,
                                 TRUE, pool));

  *kind_p = args.kind;
  return SVN_NO_ERROR;
}