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
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_5__ {char action; scalar_t__ kind; } ;
typedef  TYPE_1__ svn_repos_node_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct node_baton {int /*<<< orphan*/  node; struct edit_baton* edit_baton; } ;
struct edit_baton {int /*<<< orphan*/  fs; int /*<<< orphan*/ * base_root; int /*<<< orphan*/  node_pool; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_none ; 
 char* FUNC9 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(const char *path,
             svn_revnum_t revision,
             void *parent_baton,
             apr_pool_t *pool)
{
  struct node_baton *d = parent_baton;
  struct edit_baton *eb = d->edit_baton;
  svn_repos_node_t *node;
  const char *name;
  const char *base_path;
  svn_revnum_t base_rev;
  svn_fs_root_t *base_root;
  svn_node_kind_t kind;

  /* Get (or create) the change node and update it. */
  name = FUNC9(path, pool);
  node = FUNC4(d->node, name);
  if (! node)
    node = FUNC3(d->node, name, eb->node_pool);
  node->action = 'D';

  /* We need to look up this node's parents to see what its original
     path in the filesystem was.  Why?  Because if this deletion
     occurred underneath a copied path, the thing that was deleted
     probably lived at a different location (relative to the copy
     source). */
  FUNC5(&base_path, &base_rev, node, pool);
  if (! FUNC1(base_rev))
    {
      /* No interesting base revision?  We'll just look for the path
         in our base root.  */
      base_root = eb->base_root;
    }
  else
    {
      /* Oh.  Perhaps some copy goodness happened somewhere? */
      FUNC0(FUNC8(&base_root, eb->fs, base_rev, pool));
    }

  /* Now figure out if this thing was a file or a dir. */
  FUNC0(FUNC7(&kind, base_root, base_path, pool));
  if (kind == svn_node_none)
    return FUNC6(SVN_ERR_FS_NOT_FOUND, NULL,
                             FUNC2("'%s' not found in filesystem"), path);
  node->kind = kind;

  return SVN_NO_ERROR;
}