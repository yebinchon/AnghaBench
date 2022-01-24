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
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
struct TYPE_4__ {scalar_t__ kind; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ svn_fs_dirent_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_none ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(const svn_fs_dirent_t **entry, svn_fs_root_t *root,
            const char *path, apr_pool_t *pool)
{
  svn_node_kind_t kind;
  svn_fs_dirent_t *ent;

  FUNC0(FUNC2(&kind, root, path, pool));
  if (kind == svn_node_none)
    *entry = NULL;
  else
    {
      ent = FUNC1(pool, sizeof(**entry));
      /* ### All callers should be updated to pass just one of these
             formats */
      ent->name = (*path == '/') ? FUNC4(path, pool)
                                 : FUNC5(path, pool);
      FUNC0(FUNC3(&ent->id, root, path, pool));
      ent->kind = kind;
      *entry = ent;
    }
  return SVN_NO_ERROR;
}