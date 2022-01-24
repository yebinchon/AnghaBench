#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {char const* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
struct TYPE_21__ {scalar_t__ len; } ;
typedef  TYPE_2__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_fs_x__change_set_t ;
struct TYPE_22__ {int /*<<< orphan*/  is_txn_root; } ;
typedef  TYPE_3__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,TYPE_3__*,int /*<<< orphan*/ *,char const*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC5 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static svn_error_t *
FUNC13(dag_node_t **node_p,
              svn_fs_root_t *root,
              svn_string_t *path,
              apr_pool_t *scratch_pool)
{
  dag_node_t *here = NULL; /* The directory we're currently looking at.  */
  apr_pool_t *iterpool;
  svn_fs_x__change_set_t change_set = FUNC7(root);
  const char *entry;
  svn_string_t directory;
  svn_stringbuf_t *entry_buffer;

  /* Special case: root directory.
     We will later assume that all paths have at least one parent level,
     so we must check here for those that don't. */
  if (path->len == 0)
    return FUNC6(FUNC4(node_p, root, change_set,
                                         scratch_pool));

  /* Callers often traverse the DAG in some path-based order or along the
     history segments.  That allows us to try a few guesses about where to
     find the next item.  This is only useful if the caller didn't request
     the full parent chain. */

  /* First attempt: Assume that we access the DAG for the same path as
     in the last lookup but for a different revision that happens to be
     the last revision that touched the respective node.  This is a
     common pattern when e.g. checking out over ra_serf.  Note that this
     will only work for committed data as the revision info for nodes in
     txns is bogus.

     This shortcut is quick and will exit this function upon success.
     So, try it first. */
  if (!root->is_txn_root)
    {
      FUNC0(FUNC12(node_p, root, path));

      /* Did the shortcut work? */
      if (*node_p)
          return SVN_NO_ERROR;
    }

  /* Second attempt: Try starting the lookup immediately at the parent
     node.  We will often have recently accessed either a sibling or
     said parent directory itself for the same revision.  ENTRY will
     point to the last '/' in PATH. */
  entry_buffer = FUNC11(64, scratch_pool);
  if (FUNC3(path, &directory, entry_buffer))
    {
      here = FUNC1(root, &directory);

      /* Did the shortcut work? */
      if (here)
        return FUNC6(FUNC2(node_p, root, here,
                                        entry_buffer->data, path,
                                        change_set, FALSE, scratch_pool));
    }

  /* Now there is something to iterate over. Thus, create the ITERPOOL. */
  iterpool = FUNC9(scratch_pool);

  /* Make a parent_path item for the root node, using its own current
     copy id.  */
  FUNC0(FUNC4(&here, root, change_set, iterpool));
  path->len = 0;

  /* Walk the path segment by segment. */
  for (entry = FUNC5(path, entry_buffer);
       entry;
       entry = FUNC5(path, entry_buffer))
    {
      FUNC8(iterpool);

      /* Note that HERE is allocated from the DAG node cache and will
         therefore survive the ITERPOOL cleanup. */
      FUNC0(FUNC2(&here, root, here, entry, path, change_set, FALSE,
                       iterpool));
    }

  FUNC10(iterpool);
  *node_p = here;

  return SVN_NO_ERROR;
}