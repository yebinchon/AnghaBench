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
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct revision_root_args {int /*<<< orphan*/  rev; int /*<<< orphan*/ ** root_p; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct revision_root_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txn_body_revision_root ; 

svn_error_t *
FUNC3(svn_fs_root_t **root_p,
                           svn_fs_t *fs,
                           svn_revnum_t rev,
                           apr_pool_t *pool)
{
  struct revision_root_args args;
  svn_fs_root_t *root;

  FUNC0(FUNC1(fs, TRUE));

  args.root_p = &root;
  args.rev = rev;
  FUNC0(FUNC2(fs, txn_body_revision_root, &args,
                                 FALSE, pool));

  *root_p = root;
  return SVN_NO_ERROR;
}