#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
struct TYPE_7__ {scalar_t__ rev; TYPE_1__* fs; } ;
typedef  TYPE_2__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_8__ {int /*<<< orphan*/  dag_node_cache; } ;
typedef  TYPE_3__ fs_fs_data_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_6__ {TYPE_3__* fsap_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(dag_node_t **node_p,
                    svn_fs_root_t *root,
                    const char *path,
                    apr_size_t path_len,
                    apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = root->fs->fsap_data;

  /* Optimistic lookup: if the last node returned from the cache applied to
     the same PATH, return it in NODE. */
  dag_node_t *node
    = FUNC1(ffd->dag_node_cache, path, path_len);

  /* Did we get a bucket with a committed node? */
  if (node && !FUNC4(node))
    {
      /* Get the path&rev pair at which this node was created.
         This is repository location for which this node is _known_ to be
         the right lookup result irrespective of how we found it. */
      const char *created_path
        = FUNC5(node);
      svn_revnum_t revision;
      FUNC0(FUNC6(&revision, node, scratch_pool));

      /* Is it an exact match? */
      if (revision == root->rev && FUNC3(created_path, path) == 0)
        {
          /* Cache it under its full path@rev access path. */
          FUNC0(FUNC2(root, path, node, scratch_pool));

          *node_p = node;
          return SVN_NO_ERROR;
        }
    }

  *node_p = NULL;
  return SVN_NO_ERROR;
}