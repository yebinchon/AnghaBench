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
struct TYPE_3__ {int /*<<< orphan*/ * node; } ;
typedef  TYPE_1__ parent_path_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int open_path_node_only ; 
 int open_path_uncached ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC5(dag_node_t **dag_node_p,
        svn_fs_root_t *root,
        const char *path,
        apr_pool_t *pool)
{
  parent_path_t *parent_path;
  dag_node_t *node = NULL;

  /* First we look for the DAG in our cache
     (if the path may be canonical). */
  if (*path == '/')
    FUNC0(FUNC1(&node, root, path, pool));

  if (! node)
    {
      /* Canonicalize the input PATH.  As it turns out, >95% of all paths
       * seen here during e.g. svnadmin verify are non-canonical, i.e.
       * miss the leading '/'.  Check for those quickly.
       *
       * For normalized paths, it is much faster to check the path than
       * to attempt a second cache lookup (which would fail). */
      if (*path != '/' || !FUNC4(path))
        {
          path = FUNC3(path, pool);
          FUNC0(FUNC1(&node, root, path, pool));
        }

      if (! node)
        {
          /* Call open_path with no flags, as we want this to return an
           * error if the node for which we are searching doesn't exist. */
          FUNC0(FUNC2(&parent_path, root, path,
                            open_path_uncached | open_path_node_only,
                            FALSE, pool));
          node = parent_path->node;

          /* No need to cache our find -- open_path() will do that for us. */
        }
    }

  *dag_node_p = node;
  return SVN_NO_ERROR;
}