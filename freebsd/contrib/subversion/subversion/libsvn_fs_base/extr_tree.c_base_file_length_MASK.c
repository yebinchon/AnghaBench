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
typedef  int /*<<< orphan*/  svn_filesize_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct file_length_args {char const* path; int /*<<< orphan*/  length; TYPE_1__* root; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file_length_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txn_body_file_length ; 

__attribute__((used)) static svn_error_t *
FUNC2(svn_filesize_t *length_p,
                 svn_fs_root_t *root,
                 const char *path,
                 apr_pool_t *pool)
{
  struct file_length_args args;

  args.root = root;
  args.path = path;
  FUNC0(FUNC1(root->fs, txn_body_file_length, &args,
                                 TRUE, pool));

  *length_p = args.length;
  return SVN_NO_ERROR;
}