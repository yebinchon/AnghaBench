#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct node_proplist_args {char const* path; TYPE_1__* root; int /*<<< orphan*/ ** table_p; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct node_proplist_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txn_body_node_proplist ; 

__attribute__((used)) static svn_error_t *
FUNC2(apr_hash_t **table_p,
                   svn_fs_root_t *root,
                   const char *path,
                   apr_pool_t *pool)
{
  apr_hash_t *table;
  struct node_proplist_args args;

  args.table_p = &table;
  args.root = root;
  args.path = path;

  FUNC0(FUNC1(root->fs, txn_body_node_proplist, &args,
                                 FALSE, pool));

  *table_p = table;
  return SVN_NO_ERROR;
}