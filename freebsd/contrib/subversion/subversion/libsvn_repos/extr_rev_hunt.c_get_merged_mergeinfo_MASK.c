#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_2__ svn_repos_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_fs_path_change_iterator_t ;
struct TYPE_19__ {char const* data; int /*<<< orphan*/  len; } ;
struct TYPE_21__ {scalar_t__ mergeinfo_mod; TYPE_1__ path; scalar_t__ prop_mod; } ;
typedef  TYPE_3__ svn_fs_path_change3_t ;
struct TYPE_22__ {scalar_t__ apr_err; } ;
typedef  TYPE_4__ svn_error_t ;
struct path_revision {char* path; scalar_t__ revnum; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 scalar_t__ SVN_ERR_FS_NOT_FOUND ; 
 scalar_t__ SVN_ERR_MERGEINFO_PARSE_ERROR ; 
 TYPE_4__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 TYPE_4__* FUNC4 (TYPE_4__*) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC6 (TYPE_3__**,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char const*,char const*) ; 
 TYPE_4__* FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_mergeinfo_inherited ; 
 TYPE_4__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_tristate_false ; 

__attribute__((used)) static svn_error_t *
FUNC12(apr_hash_t **merged_mergeinfo,
                     svn_repos_t *repos,
                     struct path_revision *old_path_rev,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  apr_hash_t *curr_mergeinfo, *prev_mergeinfo, *deleted, *changed;
  svn_error_t *err;
  svn_fs_root_t *root, *prev_root;
  const char *start_path = old_path_rev->path;
  const char *path = NULL;

  svn_fs_path_change_iterator_t *iterator;
  svn_fs_path_change3_t *change;

  /* Getting/parsing/diffing svn:mergeinfo is expensive, so only do it
     if there is a property change. */
  FUNC0(FUNC8(&root, repos->fs, old_path_rev->revnum,
                               scratch_pool));
  FUNC0(FUNC7(&iterator, root, scratch_pool, scratch_pool));
  FUNC0(FUNC6(&change, iterator));

  /* Find the changed PATH closest to START_PATH which may have a mergeinfo
   * change. */
  while (change)
    {
      if (   change->prop_mod
          && change->mergeinfo_mod != svn_tristate_false
          && FUNC9(change->path.data, start_path))
        {
          if (!path || FUNC9(path, change->path.data))
            path = FUNC2(scratch_pool, change->path.data,
                                  change->path.len);
        }

      FUNC0(FUNC6(&change, iterator));
    }

  if (path == NULL)
    {
      *merged_mergeinfo = NULL;
      return SVN_NO_ERROR;
    }

  /* First, find the mergeinfo difference for old_path_rev->revnum, and
     old_path_rev->revnum - 1. */
  /* We do not need to call svn_repos_fs_get_mergeinfo() (which performs authz)
     because we will filter out unreadable revisions in
     find_interesting_revision() */
  err = FUNC5(&curr_mergeinfo,
                                       root, old_path_rev->path,
                                       svn_mergeinfo_inherited, TRUE,
                                       scratch_pool, scratch_pool);
  if (err)
    {
      if (err->apr_err == SVN_ERR_MERGEINFO_PARSE_ERROR)
        {
          /* Issue #3896: If invalid mergeinfo is encountered the
             best we can do is ignore it and act is if there are
             no mergeinfo differences. */
          FUNC3(err);
          *merged_mergeinfo = NULL;
          return SVN_NO_ERROR;
        }
      else
        {
          return FUNC4(err);
        }
    }

  FUNC0(FUNC8(&prev_root, repos->fs, old_path_rev->revnum - 1,
                               scratch_pool));
  err = FUNC5(&prev_mergeinfo,
                                       prev_root, old_path_rev->path,
                                       svn_mergeinfo_inherited, TRUE,
                                       scratch_pool, scratch_pool);
  if (err && (err->apr_err == SVN_ERR_FS_NOT_FOUND
              || err->apr_err == SVN_ERR_MERGEINFO_PARSE_ERROR))
    {
      /* If the path doesn't exist in the previous revision or it does exist
         but has invalid mergeinfo (Issue #3896), assume no merges. */
      FUNC3(err);
      *merged_mergeinfo = NULL;
      return SVN_NO_ERROR;
    }
  else
    FUNC0(err);

  /* Then calculate and merge the differences, combining additions and
     (negated) deletions as all positive changes in CHANGES. */
  FUNC0(FUNC10(&deleted, &changed, prev_mergeinfo,
                              curr_mergeinfo, FALSE, result_pool,
                              scratch_pool));
  FUNC0(FUNC11(changed, deleted, result_pool, scratch_pool));

  /* Store the result. */
  if (FUNC1(changed))
    *merged_mergeinfo = changed;
  else
    *merged_mergeinfo = NULL;

  return SVN_NO_ERROR;
}