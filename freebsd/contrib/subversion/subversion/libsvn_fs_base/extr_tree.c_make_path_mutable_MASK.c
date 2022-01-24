#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  trail_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_7__ {char* txn; int /*<<< orphan*/ * fs; } ;
typedef  TYPE_1__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_8__ {char* copy_src_path; int copy_inherit; int /*<<< orphan*/ * node; int /*<<< orphan*/  entry; struct TYPE_8__* parent; } ;
typedef  TYPE_2__ parent_path_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int copy_id_inherit_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
#define  copy_id_inherit_new 131 
#define  copy_id_inherit_parent 130 
#define  copy_id_inherit_self 129 
#define  copy_id_inherit_unknown 128 
 int /*<<< orphan*/  copy_kind_soft ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ **,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(svn_fs_root_t *root,
                  parent_path_t *parent_path,
                  const char *error_path,
                  trail_t *trail,
                  apr_pool_t *pool)
{
  dag_node_t *cloned_node;
  const char *txn_id = root->txn;
  svn_fs_t *fs = root->fs;

  /* Is the node mutable already?  */
  if (FUNC5(parent_path->node, txn_id))
    return SVN_NO_ERROR;

  /* Are we trying to clone the root, or somebody's child node?  */
  if (parent_path->parent)
    {
      const svn_fs_id_t *parent_id;
      const svn_fs_id_t *node_id = FUNC7(parent_path->node);
      const char *copy_id = NULL;
      const char *copy_src_path = parent_path->copy_src_path;
      copy_id_inherit_t inherit = parent_path->copy_inherit;
      const char *clone_path;

      /* We're trying to clone somebody's child.  Make sure our parent
         is mutable.  */
      FUNC0(FUNC12(root, parent_path->parent,
                                error_path, trail, pool));

      switch (inherit)
        {
        case copy_id_inherit_parent:
          parent_id = FUNC7(parent_path->parent->node);
          copy_id = FUNC8(parent_id);
          break;

        case copy_id_inherit_new:
          FUNC0(FUNC11(&copy_id, fs, trail, pool));
          break;

        case copy_id_inherit_self:
          copy_id = NULL;
          break;

        case copy_id_inherit_unknown:
        default:
          FUNC1(); /* uh-oh -- somebody didn't calculate copy-ID
                      inheritance data. */
        }

      /* Now make this node mutable.  */
      clone_path = FUNC3(parent_path->parent, pool);
      FUNC0(FUNC6(&cloned_node,
                                           parent_path->parent->node,
                                           clone_path,
                                           parent_path->entry,
                                           copy_id, txn_id,
                                           trail, pool));

      /* If we just created a brand new copy ID, we need to store a
         `copies' table entry for it, as well as a notation in the
         transaction that should this transaction be terminated, our
         new copy needs to be removed. */
      if (inherit == copy_id_inherit_new)
        {
          const svn_fs_id_t *new_node_id =
            FUNC7(cloned_node);
          FUNC0(FUNC10(fs, copy_id, copy_src_path,
                                          FUNC9(node_id),
                                          new_node_id,
                                          copy_kind_soft, trail, pool));
          FUNC0(FUNC4(fs, txn_id, copy_id,
                                            trail, pool));
        }
    }
  else
    {
      /* We're trying to clone the root directory.  */
      FUNC0(FUNC2(&cloned_node, root, error_path, trail, pool));
    }

  /* Update the PARENT_PATH link to refer to the clone.  */
  parent_path->node = cloned_node;

  return SVN_NO_ERROR;
}