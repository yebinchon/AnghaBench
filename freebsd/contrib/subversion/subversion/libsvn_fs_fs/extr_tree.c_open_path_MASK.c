#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int len; char* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_16__ {int /*<<< orphan*/  rev; int /*<<< orphan*/  txn; scalar_t__ is_txn_root; int /*<<< orphan*/ * fs; } ;
typedef  TYPE_2__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_17__ {int /*<<< orphan*/  copy_src_path; void* copy_inherit; int /*<<< orphan*/ * node; } ;
typedef  TYPE_3__ parent_path_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  void* copy_id_inherit_t ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 void* copy_id_inherit_self ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,TYPE_2__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (void**,char const**,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ *,char*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int open_path_allow_null ; 
 int open_path_last_optional ; 
 int open_path_node_only ; 
 int open_path_uncached ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC13 (char const*) ; 
 char* FUNC14 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 
 char* FUNC16 (char const**,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC22 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ **,TYPE_2__*,char const*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC24(parent_path_t **parent_path_p,
          svn_fs_root_t *root,
          const char *path,
          int flags,
          svn_boolean_t is_txn_path,
          apr_pool_t *pool)
{
  svn_fs_t *fs = root->fs;
  dag_node_t *here = NULL; /* The directory we're currently looking at.  */
  parent_path_t *parent_path; /* The path from HERE up to the root. */
  const char *rest = NULL; /* The portion of PATH we haven't traversed yet. */
  apr_pool_t *iterpool = FUNC20(pool);

  /* path to the currently processed entry without trailing '/'.
     We will reuse this across iterations by simply putting a NUL terminator
     at the respective position and replacing that with a '/' in the next
     iteration.  This is correct as we assert() PATH to be canonical. */
  svn_stringbuf_t *path_so_far = FUNC22(path, pool);
  apr_size_t path_len = path_so_far->len;

  /* Callers often traverse the DAG in some path-based order or along the
     history segments.  That allows us to try a few guesses about where to
     find the next item.  This is only useful if the caller didn't request
     the full parent chain. */
  FUNC7(FUNC15(path));
  path_so_far->len = 0; /* "" */
  if (flags & open_path_node_only)
    {
      const char *directory;

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
          dag_node_t *node;
          FUNC0(FUNC23(&node, root, path, path_len, iterpool));

          /* Did the shortcut work? */
          if (node)
            {
              /* Construct and return the result. */
              FUNC21(iterpool);

              parent_path = FUNC11(node, 0, 0, pool);
              parent_path->copy_inherit = copy_id_inherit_self;
              *parent_path_p = parent_path;

              return SVN_NO_ERROR;
            }
        }

      /* Second attempt: Try starting the lookup immediately at the parent
         node.  We will often have recently accessed either a sibling or
         said parent DIRECTORY itself for the same revision. */
      directory = FUNC14(path, pool);
      if (directory[1] != 0) /* root nodes are covered anyway */
        {
          FUNC0(FUNC8(&here, root, directory, pool));

          /* Did the shortcut work? */
          if (here)
            {
              apr_size_t dirname_len = FUNC13(directory);
              path_so_far->len = dirname_len;
              rest = path + dirname_len + 1;
            }
        }
    }

  /* did the shortcut work? */
  if (!here)
    {
      /* Make a parent_path item for the root node, using its own current
         copy id.  */
      FUNC0(FUNC12(&here, root, pool));
      rest = path + 1; /* skip the leading '/', it saves in iteration */
    }

  path_so_far->data[path_so_far->len] = '\0';
  parent_path = FUNC11(here, 0, 0, pool);
  parent_path->copy_inherit = copy_id_inherit_self;

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

      FUNC19(iterpool);

      /* Parse out the next entry from the path.  */
      entry = FUNC16(&next, rest, pool);

      /* Update the path traversed thus far. */
      path_so_far->data[path_so_far->len] = '/';
      path_so_far->len += FUNC13(entry) + 1;
      path_so_far->data[path_so_far->len] = '\0';

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
          dag_node_t *cached_node = NULL;

          /* If we found a directory entry, follow it.  First, we
             check our node cache, and, failing that, we hit the DAG
             layer.  Don't bother to contact the cache for the last
             element if we already know the lookup to fail for the
             complete path. */
          if (next || !(flags & open_path_uncached))
            FUNC0(FUNC8(&cached_node, root, path_so_far->data,
                                       pool));
          if (cached_node)
            child = cached_node;
          else
            FUNC0(FUNC18(&child, here, entry, pool, iterpool));

          /* "file not found" requires special handling.  */
          if (child == NULL)
            {
              /* If this was the last path component, and the caller
                 said it was optional, then don't return an error;
                 just put a NULL node pointer in the path.  */

              if ((flags & open_path_last_optional)
                  && (! next || *next == '\0'))
                {
                  parent_path = FUNC11(NULL, entry, parent_path,
                                                 pool);
                  break;
                }
              else if (flags & open_path_allow_null)
                {
                  parent_path = NULL;
                  break;
                }
              else
                {
                  /* Build a better error message than svn_fs_fs__dag_open
                     can provide, giving the root and full path name.  */
                  return FUNC3(root, path);
                }
            }

          if (flags & open_path_node_only)
            {
              /* Shortcut: the caller only wants the final DAG node. */
              parent_path->node = child;
            }
          else
            {
              /* Now, make a parent_path item for CHILD. */
              parent_path = FUNC11(child, entry, parent_path, pool);
              if (is_txn_path)
                {
                  FUNC0(FUNC10(&inherit, &copy_path, fs,
                                               parent_path, iterpool));
                  parent_path->copy_inherit = inherit;
                  parent_path->copy_src_path = FUNC6(pool, copy_path);
                }
            }

          /* Cache the node we found (if it wasn't already cached). */
          if (! cached_node)
            FUNC0(FUNC9(root, path_so_far->data, child,
                                       iterpool));
        }

      /* Are we finished traversing the path?  */
      if (! next)
        break;

      /* The path isn't finished yet; we'd better be in a directory.  */
      if (FUNC17(child) != svn_node_dir)
        {
          const char *msg;

          /* Since this is not a directory and we are looking for some
             sub-path, that sub-path will not exist.  That will be o.k.,
             if we are just here to check for the path's existence. */
          if (flags & open_path_allow_null)
            {
              parent_path = NULL;
              break;
            }

          /* It's really a problem ... */
          msg = root->is_txn_root
              ? FUNC5(iterpool,
                             FUNC4("Failure opening '%s' in transaction '%s'"),
                             path, root->txn)
              : FUNC5(iterpool,
                             FUNC4("Failure opening '%s' in revision %ld"),
                             path, root->rev);
          FUNC1(FUNC2(fs, path_so_far->data), msg);
        }

      rest = next;
      here = child;
    }

  FUNC21(iterpool);
  *parent_path_p = parent_path;
  return SVN_NO_ERROR;
}