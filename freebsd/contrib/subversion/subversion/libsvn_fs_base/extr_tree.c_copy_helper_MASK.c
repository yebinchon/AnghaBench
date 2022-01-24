#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* fs; scalar_t__ is_txn_root; } ;
typedef  TYPE_1__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct copy_args {char const* from_path; char const* to_path; int /*<<< orphan*/  preserve_history; TYPE_1__* to_root; TYPE_1__* from_root; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_9__ {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_UNSUPPORTED_FEATURE ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,struct copy_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txn_body_copy ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_fs_root_t *from_root,
            const char *from_path,
            svn_fs_root_t *to_root,
            const char *to_path,
            svn_boolean_t preserve_history,
            apr_pool_t *pool)
{
  struct copy_args args;
  svn_boolean_t same_p;

  /* Use an error check, not an assert, because even the caller cannot
     guarantee that a filesystem's UUID has not changed "on the fly". */
  FUNC0(FUNC3(&same_p, from_root->fs, to_root->fs, pool));
  if (! same_p)
    return FUNC5
      (SVN_ERR_UNSUPPORTED_FEATURE, NULL,
       FUNC2("Cannot copy between two different filesystems ('%s' and '%s')"),
       from_root->fs->path, to_root->fs->path);

  if (! to_root->is_txn_root)
    return FUNC1(to_root);

  if (from_root->is_txn_root)
    return FUNC4
      (SVN_ERR_UNSUPPORTED_FEATURE, NULL,
       FUNC2("Copy from mutable tree not currently supported"));

  args.from_root         = from_root;
  args.from_path         = from_path;
  args.to_root           = to_root;
  args.to_path           = to_path;
  args.preserve_history  = preserve_history;

  return FUNC6(to_root->fs, txn_body_copy, &args,
                                TRUE, pool);
}