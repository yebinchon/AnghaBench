#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  trail_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_21__ {int /*<<< orphan*/ * fs; } ;
typedef  TYPE_1__ svn_fs_root_t ;
struct TYPE_22__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
struct TYPE_23__ {int /*<<< orphan*/  copy_src_path; int /*<<< orphan*/  copy_inherit; } ;
typedef  TYPE_3__ parent_path_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  copy_id_inherit_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ SVN_ERR_FS_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 TYPE_2__* FUNC3 (TYPE_1__*,char const*) ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  copy_id_inherit_self ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,TYPE_3__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ *,char*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int open_path_last_optional ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ **,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 char* FUNC13 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC14 (char const**,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC17 (char const*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 

__attribute__((used)) static svn_error_t *
FUNC18(parent_path_t **parent_path_p,
          svn_fs_root_t *root,
          const char *path,
          int flags,
          const char *txn_id,
          trail_t *trail,
          apr_pool_t *pool)
{
  svn_fs_t *fs = root->fs;
  dag_node_t *here; /* The directory we're currently looking at.  */
  parent_path_t *parent_path; /* The path from HERE up to the root.  */
  const char *rest; /* The portion of PATH we haven't traversed yet.  */
  const char *canon_path = FUNC13(path, pool);
  const char *path_so_far = "/";

  /* Make a parent_path item for the root node, using its own current
     copy id.  */
  FUNC0(FUNC11(&here, root, trail, pool));
  parent_path = FUNC10(here, 0, 0, pool);
  parent_path->copy_inherit = copy_id_inherit_self;

  rest = canon_path + 1; /* skip the leading '/', it saves in iteration */

  /* Whenever we are at the top of this loop:
     - HERE is our current directory,
     - ID is the node revision ID of HERE,
     - REST is the path we're going to find in HERE, and
     - PARENT_PATH includes HERE and all its parents.  */
  for (;;)
    {
      const char *next;
      char *entry;
      dag_node_t *child;

      /* Parse out the next entry from the path.  */
      entry = FUNC14(&next, rest, pool);

      /* Calculate the path traversed thus far. */
      path_so_far = FUNC17(path_so_far, entry, pool);

      if (*entry == '\0')
        {
          /* Given the behavior of svn_fs__next_entry_name(), this
             happens when the path either starts or ends with a slash.
             In either case, we stay put: the current directory stays
             the same, and we add nothing to the parent path. */
          child = here;
        }
      else
        {
          copy_id_inherit_t inherit;
          const char *copy_path = NULL;
          svn_error_t *err = SVN_NO_ERROR;
          dag_node_t *cached_node;

          /* If we found a directory entry, follow it.  First, we
             check our node cache, and, failing that, we hit the DAG
             layer. */
          cached_node = FUNC7(root, path_so_far, pool);
          if (cached_node)
            child = cached_node;
          else
            err = FUNC16(&child, here, entry, trail, pool);

          /* "file not found" requires special handling.  */
          if (err && err->apr_err == SVN_ERR_FS_NOT_FOUND)
            {
              /* If this was the last path component, and the caller
                 said it was optional, then don't return an error;
                 just put a NULL node pointer in the path.  */

              FUNC12(err);

              if ((flags & open_path_last_optional)
                  && (! next || *next == '\0'))
                {
                  parent_path = FUNC10(NULL, entry, parent_path,
                                                 pool);
                  break;
                }
              else
                {
                  /* Build a better error message than svn_fs_base__dag_open
                     can provide, giving the root and full path name.  */
                  return FUNC3(root, path);
                }
            }

          /* Other errors we return normally.  */
          FUNC0(err);

          /* Now, make a parent_path item for CHILD. */
          parent_path = FUNC10(child, entry, parent_path, pool);
          if (txn_id)
            {
              FUNC0(FUNC9(&inherit, &copy_path,
                                           fs, parent_path, txn_id,
                                           trail, pool));
              parent_path->copy_inherit = inherit;
              parent_path->copy_src_path = FUNC6(pool, copy_path);
            }

          /* Cache the node we found (if it wasn't already cached). */
          if (! cached_node)
            FUNC8(root, path_so_far, child);
        }

      /* Are we finished traversing the path?  */
      if (! next)
        break;

      /* The path isn't finished yet; we'd better be in a directory.  */
      if (FUNC15(child) != svn_node_dir)
        FUNC1(FUNC2(fs, path_so_far),
                  FUNC5(pool, FUNC4("Failure opening '%s'"), path));

      rest = next;
      here = child;
    }

  *parent_path_p = parent_path;
  return SVN_NO_ERROR;
}