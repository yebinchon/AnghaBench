#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  (* svn_repos_authz_func_t ) (scalar_t__*,int /*<<< orphan*/ *,char const*,void*,int /*<<< orphan*/ *) ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  scalar_t__ svn_fs_node_relation_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_6__ {int elt_size; int nelts; scalar_t__ elts; } ;
typedef  TYPE_1__ apr_array_header_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ *,char const*,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  (*) (scalar_t__*,int /*<<< orphan*/ *,char const*,void*,int /*<<< orphan*/ *),void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_fs_node_unrelated ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_none ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,char const**,scalar_t__*,int /*<<< orphan*/ *,scalar_t__,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_sort_compare_revisions ; 

svn_error_t *
FUNC17(svn_fs_t *fs,
                               apr_hash_t **locations,
                               const char *fs_path,
                               svn_revnum_t peg_revision,
                               const apr_array_header_t *location_revisions_orig,
                               svn_repos_authz_func_t authz_read_func,
                               void *authz_read_baton,
                               apr_pool_t *pool)
{
  apr_array_header_t *location_revisions;
  svn_revnum_t *revision_ptr, *revision_ptr_end;
  svn_fs_root_t *root;
  const char *path;
  svn_revnum_t revision;
  svn_boolean_t is_ancestor;
  apr_pool_t *lastpool, *currpool;

  FUNC1(location_revisions_orig->elt_size == sizeof(svn_revnum_t));

  /* Ensure that FS_PATH is absolute, because our path-math below will
     depend on that being the case.  */
  if (*fs_path != '/')
    fs_path = FUNC5(pool, "/", fs_path, SVN_VA_NULL);

  /* Another sanity check. */
  if (authz_read_func)
    {
      svn_fs_root_t *peg_root;
      FUNC0(FUNC11(&peg_root, fs, peg_revision, pool));
      FUNC0(FUNC8(peg_root, fs_path,
                                authz_read_func, authz_read_baton, pool));
    }

  *locations = FUNC3(pool);

  /* We flip between two pools in the second loop below. */
  lastpool = FUNC13(pool);
  currpool = FUNC13(pool);

  /* First - let's sort the array of the revisions from the greatest revision
   * downward, so it will be easier to search on. */
  location_revisions = FUNC2(pool, location_revisions_orig);
  FUNC16(location_revisions, svn_sort_compare_revisions);

  revision_ptr = (svn_revnum_t *)location_revisions->elts;
  revision_ptr_end = revision_ptr + location_revisions->nelts;

  /* Ignore revisions R that are younger than the peg_revisions where
     path@peg_revision is not an ancestor of path@R. */
  is_ancestor = FALSE;
  while (revision_ptr < revision_ptr_end && *revision_ptr > peg_revision)
    {
      FUNC12(currpool);
      FUNC0(FUNC7(&is_ancestor, fs, fs_path,
                                         peg_revision, *revision_ptr,
                                         currpool));
      if (is_ancestor)
        break;
      ++revision_ptr;
    }

  revision = is_ancestor ? *revision_ptr : peg_revision;
  path = fs_path;
  if (authz_read_func)
    {
      FUNC0(FUNC11(&root, fs, revision, pool));
      FUNC0(FUNC8(root, fs_path, authz_read_func,
                                authz_read_baton, pool));
    }

  while (revision_ptr < revision_ptr_end)
    {
      apr_pool_t *tmppool;
      svn_revnum_t appeared_rev, prev_rev;
      const char *prev_path;

      /* Find the target of the innermost copy relevant to path@revision.
         The copy may be of path itself, or of a parent directory. */
      FUNC0(FUNC15(&appeared_rev, &prev_path, &prev_rev,
                                       fs, revision, path, currpool));
      if (! prev_path)
        break;

      /* Assign the current path to all younger revisions until we reach
         the copy target rev. */
      while ((revision_ptr < revision_ptr_end)
             && (*revision_ptr >= appeared_rev))
        {
          /* *revision_ptr is allocated out of pool, so we can point
             to in the hash table. */
          FUNC4(*locations, revision_ptr, sizeof(*revision_ptr),
                       FUNC6(pool, path));
          revision_ptr++;
        }

      /* Ignore all revs between the copy target rev and the copy
         source rev (non-inclusive). */
      while ((revision_ptr < revision_ptr_end)
             && (*revision_ptr > prev_rev))
        revision_ptr++;

      /* State update. */
      path = prev_path;
      revision = prev_rev;

      if (authz_read_func)
        {
          svn_boolean_t readable;
          FUNC0(FUNC11(&root, fs, revision, currpool));
          FUNC0(authz_read_func(&readable, root, path,
                                  authz_read_baton, currpool));
          if (!readable)
            {
              FUNC14(lastpool);
              FUNC14(currpool);
              return SVN_NO_ERROR;
            }
        }

      /* Clear last pool and switch. */
      FUNC12(lastpool);
      tmppool = lastpool;
      lastpool = currpool;
      currpool = tmppool;
    }

  /* There are no copies relevant to path@revision.  So any remaining
     revisions either predate the creation of path@revision or have
     the node existing at the same path.  We will look up path@lrev
     for each remaining location-revision and make sure it is related
     to path@revision. */
  FUNC0(FUNC11(&root, fs, revision, lastpool));
  while (revision_ptr < revision_ptr_end)
    {
      svn_node_kind_t kind;
      svn_fs_node_relation_t node_relation;
      svn_fs_root_t *cur_rev_root;

      FUNC12(currpool);
      FUNC0(FUNC11(&cur_rev_root, fs, *revision_ptr,
                                   currpool));
      FUNC0(FUNC9(&kind, cur_rev_root, path, currpool));
      if (kind == svn_node_none)
        break;
      FUNC0(FUNC10(&node_relation, root, path,
                                   cur_rev_root, path, currpool));
      if (node_relation == svn_fs_node_unrelated)
        break;

      /* The node exists at the same path; record that and advance. */
      FUNC4(*locations, revision_ptr, sizeof(*revision_ptr),
                   FUNC6(pool, path));
      revision_ptr++;
    }

  /* Ignore any remaining location-revisions; they predate the
     creation of path@revision. */

  FUNC14(lastpool);
  FUNC14(currpool);

  return SVN_NO_ERROR;
}