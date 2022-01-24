#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ trail_t ;
struct TYPE_17__ {char* txn; int txn_flags; int /*<<< orphan*/  fs; } ;
typedef  TYPE_2__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct make_file_args {char* path; TYPE_2__* root; } ;
struct TYPE_18__ {int /*<<< orphan*/  entry; TYPE_7__* parent; scalar_t__ node; } ;
typedef  TYPE_3__ parent_path_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
struct TYPE_19__ {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SVN_FS_TXN_CHECK_LOCKS ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_7__*,char const*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__**,TYPE_2__*,char const*,int /*<<< orphan*/ ,char const*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  open_path_last_optional ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_fs_path_change_add ; 

__attribute__((used)) static svn_error_t *
FUNC9(void *baton,
                   trail_t *trail)
{
  struct make_file_args *args = baton;
  svn_fs_root_t *root = args->root;
  const char *path = args->path;
  parent_path_t *parent_path;
  dag_node_t *child;
  const char *txn_id = root->txn;

  FUNC0(FUNC4(&parent_path, root, path, open_path_last_optional,
                    txn_id, trail, trail->pool));

  /* If there's already a file by that name, complain.
     This also catches the case of trying to make a file named `/'.  */
  if (parent_path->node)
    return FUNC1(root, path);

  /* Check to see if some lock is 'reserving' a file-path or dir-path
     at that location, or even some child-path;  if so, check that we
     can use it. */
  if (args->root->txn_flags & SVN_FS_TXN_CHECK_LOCKS)
    {
      FUNC0(FUNC6(path, TRUE,
                                                  trail, trail->pool));
    }

  /* Create the file.  */
  FUNC0(FUNC3(root, parent_path->parent, path,
                            trail, trail->pool));
  FUNC0(FUNC8(&child,
                                     parent_path->parent->node,
                                     FUNC5(parent_path->parent,
                                                      trail->pool),
                                     parent_path->entry,
                                     txn_id,
                                     trail, trail->pool));

  /* Make a record of this modification in the changes table. */
  return FUNC2(root->fs, txn_id, path,
                    FUNC7(child),
                    svn_fs_path_change_add, TRUE, FALSE,
                    trail, trail->pool);
}