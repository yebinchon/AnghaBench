#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
struct TYPE_16__ {scalar_t__ len; } ;
typedef  TYPE_1__ svn_string_t ;
struct TYPE_17__ {int /*<<< orphan*/  copy_src_path; int /*<<< orphan*/  copy_inherit; int /*<<< orphan*/  node; } ;
typedef  TYPE_2__ svn_fs_x__dag_path_t ;
typedef  int /*<<< orphan*/  svn_fs_x__change_set_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_18__ {int /*<<< orphan*/ * fs; } ;
typedef  TYPE_3__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_3__*,char const*) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,TYPE_3__*,int /*<<< orphan*/ ,char const*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  svn_fs_x__copy_id_inherit_self ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int svn_fs_x__dag_path_allow_null ; 
 int svn_fs_x__dag_path_last_optional ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 scalar_t__ svn_node_dir ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC14(svn_fs_x__dag_path_t **dag_path_p,
                       svn_fs_root_t *root,
                       const char *fs_path,
                       int flags,
                       svn_boolean_t is_txn_path,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  svn_fs_t *fs = root->fs;
  dag_node_t *here = NULL; /* The directory we're currently looking at.  */
  svn_fs_x__dag_path_t *dag_path; /* The path from HERE up to the root. */
  apr_pool_t *iterpool = FUNC11(scratch_pool);

  svn_fs_x__change_set_t change_set = FUNC9(root);
  const char *entry;
  svn_string_t path;
  svn_stringbuf_t *entry_buffer = FUNC13(64,
                                                              scratch_pool);
  apr_size_t path_len;

  /* Normalize the FS_PATH to be compatible with our DAG walk utils. */
  FUNC7(&path, fs_path); /* "" */

  /* Make a DAG_PATH for the root node, using its own current copy id.  */
  FUNC0(FUNC4(&here, root, change_set, iterpool));
  dag_path = FUNC5(here, entry_buffer, NULL, result_pool);
  dag_path->copy_inherit = svn_fs_x__copy_id_inherit_self;

  path_len = path.len;
  path.len = 0;

  /* Walk the path segment by segment.  Add to the DAG_PATH as we go. */
  for (entry = FUNC6(&path, entry_buffer);
       entry;
       entry = FUNC6(&path, entry_buffer))
    {
      FUNC10(iterpool);

      /* If the current node is not a directory and we are just here to
       * check for the path's existence, then that's o.k.
       * Otherwise, non-dir nodes will cause an error in dag_step. */
      if (   (flags & svn_fs_x__dag_path_allow_null)
          && (FUNC8(dag_path->node) != svn_node_dir))
        {
          dag_path = NULL;
          break;
        }

      /* Find the sub-node. */
      FUNC0(FUNC2(&here, root, dag_path->node, entry, &path, change_set,
                       TRUE, iterpool));

      /* "node not found" requires special handling.  */
      if (here == NULL)
        {
          /* If this was the last path component, and the caller
             said it was optional, then don't return an error;
             just put a NULL node pointer in the path. 
           */
          if ((flags & svn_fs_x__dag_path_last_optional)
              && (path_len == path.len))
            {
              dag_path = FUNC5(NULL, entry_buffer, dag_path,
                                          result_pool);
              break;
            }
          else if (flags & svn_fs_x__dag_path_allow_null)
            {
              dag_path = NULL;
              break;
            }
          else
            {
              /* Build a better error message than svn_fs_x__dag_open
                 can provide, giving the root and full path name.  */
              return FUNC1(root, fs_path);
            }
        }

      /* Now, make a parent_path item for CHILD. */
      dag_path = FUNC5(here, entry_buffer, dag_path, result_pool);
      if (is_txn_path)
        {
          FUNC0(FUNC3(&dag_path->copy_inherit,
                                       &dag_path->copy_src_path,
                                       fs, dag_path, iterpool));
        }
    }

  FUNC12(iterpool);
  *dag_path_p = dag_path;
  return SVN_NO_ERROR;
}