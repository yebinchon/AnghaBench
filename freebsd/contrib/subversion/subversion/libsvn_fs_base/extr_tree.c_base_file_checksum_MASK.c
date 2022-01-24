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
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_checksum_kind_t ;
struct file_checksum_args {char const* path; int /*<<< orphan*/ ** checksum; int /*<<< orphan*/  kind; TYPE_1__* root; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file_checksum_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txn_body_file_checksum ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_checksum_t **checksum,
                   svn_checksum_kind_t kind,
                   svn_fs_root_t *root,
                   const char *path,
                   apr_pool_t *pool)
{
  struct file_checksum_args args;
  apr_pool_t *scratch_pool = FUNC3(pool);

  args.root = root;
  args.path = path;
  args.kind = kind;
  args.checksum = checksum;
  FUNC0(FUNC2(root->fs, txn_body_file_checksum, &args,
                                 FALSE, scratch_pool));
  *checksum = FUNC1(*checksum, pool);
  FUNC4(scratch_pool);
  return SVN_NO_ERROR;
}