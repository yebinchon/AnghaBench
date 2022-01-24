#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {scalar_t__ kind; } ;
typedef  TYPE_1__ svn_dirent_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_none ; 

svn_error_t *
FUNC4(svn_dirent_t **dirent,
               svn_fs_root_t *root,
               const char *path,
               apr_pool_t *pool)
{
  svn_node_kind_t kind;
  svn_dirent_t *ent;

  FUNC0(FUNC3(&kind, root, path, pool));

  if (kind == svn_node_none)
    {
      *dirent = NULL;
      return SVN_NO_ERROR;
    }

  ent = FUNC2(pool);
  ent->kind = kind;

  FUNC0(FUNC1(ent, root, path, pool));

  *dirent = ent;
  return SVN_NO_ERROR;
}