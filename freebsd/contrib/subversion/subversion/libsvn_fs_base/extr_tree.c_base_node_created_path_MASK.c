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
struct node_created_path_args {char const** created_path; char const* path; TYPE_1__* root; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct node_created_path_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txn_body_node_created_path ; 

__attribute__((used)) static svn_error_t *
FUNC5(const char **created_path,
                       svn_fs_root_t *root,
                       const char *path,
                       apr_pool_t *pool)
{
  struct node_created_path_args args;
  apr_pool_t *scratch_pool = FUNC3(pool);

  args.created_path = created_path;
  args.root = root;
  args.path = path;

  FUNC0(FUNC2(root->fs, txn_body_node_created_path, &args,
                                 FALSE, scratch_pool));
  if (*created_path)
    *created_path = FUNC1(pool, *created_path);
  FUNC4(scratch_pool);
  return SVN_NO_ERROR;
}