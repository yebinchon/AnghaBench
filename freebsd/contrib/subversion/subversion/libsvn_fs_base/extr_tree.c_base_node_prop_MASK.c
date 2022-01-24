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
typedef  int /*<<< orphan*/  svn_string_t ;
struct TYPE_3__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct node_prop_args {char const* path; char const* propname; TYPE_1__* root; int /*<<< orphan*/ ** value_p; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct node_prop_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txn_body_node_prop ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_string_t **value_p,
               svn_fs_root_t *root,
               const char *path,
               const char *propname,
               apr_pool_t *pool)
{
  struct node_prop_args args;
  svn_string_t *value;
  apr_pool_t *scratch_pool = FUNC2(pool);

  args.value_p  = &value;
  args.root     = root;
  args.path     = path;
  args.propname = propname;
  FUNC0(FUNC1(root->fs, txn_body_node_prop, &args,
                                 FALSE, scratch_pool));
  *value_p = FUNC4(value, pool);
  FUNC3(scratch_pool);
  return SVN_NO_ERROR;
}