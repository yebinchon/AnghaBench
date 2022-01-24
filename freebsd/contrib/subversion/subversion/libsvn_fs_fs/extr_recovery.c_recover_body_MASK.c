#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_13__ {int /*<<< orphan*/  uuid; TYPE_2__* fsap_data; } ;
typedef  TYPE_1__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_fs__revision_file_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct recover_baton {int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  (* cancel_func ) (int /*<<< orphan*/ ) ;TYPE_1__* fs; } ;
struct TYPE_14__ {scalar_t__ format; scalar_t__ rep_sharing_allowed; } ;
typedef  TYPE_2__ fs_fs_data_t ;
typedef  scalar_t__ apr_uint64_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 scalar_t__ SVN_FS_FS__MIN_NO_GLOBAL_IDS_FORMAT ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,TYPE_1__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_none ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC20(void *baton, apr_pool_t *pool)
{
  struct recover_baton *b = baton;
  svn_fs_t *fs = b->fs;
  fs_fs_data_t *ffd = fs->fsap_data;
  svn_revnum_t max_rev;
  apr_uint64_t next_node_id = 0;
  apr_uint64_t next_copy_id = 0;
  svn_revnum_t youngest_rev;
  svn_node_kind_t youngest_revprops_kind;

  /* The admin may have created a plain copy of this repo before attempting
     to recover it (hotcopy may or may not work with corrupted repos).
     Bump the instance ID. */
  FUNC0(FUNC13(fs, fs->uuid, NULL, pool));

  /* We need to know the largest revision in the filesystem. */
  FUNC0(FUNC3(fs, &max_rev, pool));

  /* Get the expected youngest revision */
  FUNC0(FUNC15(&youngest_rev, fs, pool));

  /* Policy note:

     Since the revprops file is written after the revs file, the true
     maximum available revision is the youngest one for which both are
     present.  That's probably the same as the max_rev we just found,
     but if it's not, we could, in theory, repeatedly decrement
     max_rev until we find a revision that has both a revs and
     revprops file, then write db/current with that.

     But we choose not to.  If a repository is so corrupt that it's
     missing at least one revprops file, we shouldn't assume that the
     youngest revision for which both the revs and revprops files are
     present is healthy.  In other words, we're willing to recover
     from a missing or out-of-date db/current file, because db/current
     is truly redundant -- it's basically a cache so we don't have to
     find max_rev each time, albeit a cache with unusual semantics,
     since it also officially defines when a revision goes live.  But
     if we're missing more than the cache, it's time to back out and
     let the admin reconstruct things by hand: correctness at that
     point may depend on external things like checking a commit email
     list, looking in particular working copies, etc.

     This policy matches well with a typical naive backup scenario.
     Say you're rsyncing your FSFS repository nightly to the same
     location.  Once revs and revprops are written, you've got the
     maximum rev; if the backup should bomb before db/current is
     written, then db/current could stay arbitrarily out-of-date, but
     we can still recover.  It's a small window, but we might as well
     do what we can. */

  /* Even if db/current were missing, it would be created with 0 by
     get_youngest(), so this conditional remains valid. */
  if (youngest_rev > max_rev)
    return FUNC6(SVN_ERR_FS_CORRUPT, NULL,
                             FUNC1("Expected current rev to be <= %ld "
                               "but found %ld"), max_rev, youngest_rev);

  /* We only need to search for maximum IDs for old FS formats which
     se global ID counters. */
  if (ffd->format < SVN_FS_FS__MIN_NO_GLOBAL_IDS_FORMAT)
    {
      /* Next we need to find the maximum node id and copy id in use across the
         filesystem.  Unfortunately, the only way we can get this information
         is to scan all the noderevs of all the revisions and keep track as
         we go along. */
      svn_revnum_t rev;
      apr_pool_t *iterpool = FUNC18(pool);

      for (rev = 0; rev <= max_rev; rev++)
        {
          svn_fs_fs__revision_file_t *rev_file;
          apr_off_t root_offset;

          FUNC17(iterpool);

          if (b->cancel_func)
            FUNC0(b->cancel_func(b->cancel_baton));

          FUNC0(FUNC10(&rev_file, fs, rev, pool,
                                                   iterpool));
          FUNC0(FUNC4(&root_offset, rev, rev_file, pool));
          FUNC0(FUNC2(fs, rev, rev_file, root_offset,
                                       &next_node_id, &next_copy_id, pool));
          FUNC0(FUNC7(rev_file));
        }
      FUNC19(iterpool);

      /* Now that we finally have the maximum revision, node-id and copy-id, we
         can bump the two ids to get the next of each. */
      next_node_id++;
      next_copy_id++;
    }

  /* Before setting current, verify that there is a revprops file
     for the youngest revision.  (Issue #2992) */
  FUNC0(FUNC16(FUNC12(fs, max_rev, pool),
                            &youngest_revprops_kind, pool));
  if (youngest_revprops_kind == svn_node_none)
    {
      svn_boolean_t missing = TRUE;
      if (!FUNC11(&missing, fs, max_rev, pool))
        {
          if (missing)
            {
              return FUNC6(SVN_ERR_FS_CORRUPT, NULL,
                                      FUNC1("Revision %ld has a revs file but no "
                                        "revprops file"),
                                      max_rev);
            }
          else
            {
              return FUNC6(SVN_ERR_FS_CORRUPT, NULL,
                                      FUNC1("Revision %ld has a revs file but the "
                                        "revprops file is inaccessible"),
                                      max_rev);
            }
          }
    }
  else if (youngest_revprops_kind != svn_node_file)
    {
      return FUNC6(SVN_ERR_FS_CORRUPT, NULL,
                               FUNC1("Revision %ld has a non-file where its "
                                 "revprops file should be"),
                               max_rev);
    }

  /* Prune younger-than-(newfound-youngest) revisions from the rep
     cache if sharing is enabled taking care not to create the cache
     if it does not exist. */
  if (ffd->rep_sharing_allowed)
    {
      svn_boolean_t rep_cache_exists;

      FUNC0(FUNC9(&rep_cache_exists, fs, pool));
      if (rep_cache_exists)
        FUNC0(FUNC8(fs, max_rev, pool));
    }

  /* Now store the discovered youngest revision, and the next IDs if
     relevant, in a new 'current' file. */
  return FUNC14(fs, max_rev, next_node_id, next_copy_id,
                                  pool);
}