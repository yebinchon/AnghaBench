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
typedef  int /*<<< orphan*/  svn_mergeinfo_inheritance_t ;
struct TYPE_4__ {scalar_t__ is_txn_root; int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_fs_mergeinfo_receiver_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_REVISION_ROOT ; 
 int /*<<< orphan*/  SVN_FS_BASE__MIN_MERGEINFO_FORMAT ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC4(svn_fs_root_t *root,
                   const apr_array_header_t *paths,
                   svn_mergeinfo_inheritance_t inherit,
                   svn_boolean_t include_descendants,
                   svn_boolean_t adjust_inherited_mergeinfo,
                   svn_fs_mergeinfo_receiver_t receiver,
                   void *baton,
                   apr_pool_t *scratch_pool)
{
  /* Verify that our filesystem version supports mergeinfo stuff. */
  FUNC0(FUNC3
          (root->fs, "mergeinfo", SVN_FS_BASE__MIN_MERGEINFO_FORMAT));

  /* We require a revision root. */
  if (root->is_txn_root)
    return FUNC2(SVN_ERR_FS_NOT_REVISION_ROOT, NULL, NULL);

  /* Retrieve a path -> mergeinfo mapping. */
  return FUNC1(root, paths,
                                  inherit, include_descendants,
                                  adjust_inherited_mergeinfo,
                                  receiver, baton,
                                  scratch_pool);
}