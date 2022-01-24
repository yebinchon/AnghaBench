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
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {scalar_t__ kind; int /*<<< orphan*/  time; int /*<<< orphan*/  last_author; int /*<<< orphan*/  created_rev; int /*<<< orphan*/  has_props; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ svn_dirent_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_INVALID_FILESIZE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_dirent_t *dirent,
            svn_fs_root_t *root,
            const char *path,
            apr_pool_t *scratch_pool)
{
  const char *datestring;

  if (dirent->kind == svn_node_file)
    FUNC0(FUNC1(&(dirent->size), root, path, scratch_pool));
  else
    dirent->size = SVN_INVALID_FILESIZE;

  FUNC0(FUNC2(&dirent->has_props, root, path,
                                scratch_pool));

  FUNC0(FUNC3(&(dirent->created_rev),
                                       &datestring,
                                       &(dirent->last_author),
                                       root, path, scratch_pool));
  if (datestring)
    FUNC0(FUNC4(&(dirent->time), datestring,
                                  scratch_pool));

  return SVN_NO_ERROR;
}