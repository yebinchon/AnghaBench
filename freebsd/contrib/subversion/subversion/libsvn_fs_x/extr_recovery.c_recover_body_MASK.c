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
typedef  scalar_t__ svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_16__ {scalar_t__ rep_sharing_allowed; } ;
typedef  TYPE_1__ svn_fs_x__data_t ;
struct TYPE_17__ {int /*<<< orphan*/  uuid; TYPE_1__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_18__ {TYPE_2__* fs; } ;
typedef  TYPE_3__ recover_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__*,TYPE_2__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_none ; 

__attribute__((used)) static svn_error_t *
FUNC16(void *baton,
             apr_pool_t *scratch_pool)
{
  recover_baton_t *b = baton;
  svn_fs_t *fs = b->fs;
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_revnum_t max_rev;
  svn_revnum_t youngest_rev;
  svn_boolean_t revprop_missing = TRUE;
  svn_boolean_t revprop_accessible = FALSE;

  /* Lose potentially corrupted data in temp files */
  FUNC0(FUNC11(fs, scratch_pool));

  /* The admin may have created a plain copy of this repo before attempting
     to recover it (hotcopy may or may not work with corrupted repos).
     Bump the instance ID. */
  FUNC0(FUNC12(fs, fs->uuid, NULL, TRUE, scratch_pool));

  /* Because transactions are not resilient against system crashes,
     any existing transaction is suspect (and would probably not be
     reopened anyway).  Get rid of those. */
  FUNC0(FUNC2(fs, scratch_pool));
  FUNC0(FUNC4(fs, scratch_pool));

  /* We need to know the largest revision in the filesystem. */
  FUNC0(FUNC3(fs, &max_rev, scratch_pool));

  /* Get the expected youngest revision */
  FUNC0(FUNC14(&youngest_rev, fs, scratch_pool));

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
     Say you're rsyncing your FSX repository nightly to the same
     location.  Once revs and revprops are written, you've got the
     maximum rev; if the backup should bomb before db/current is
     written, then db/current could stay arbitrarily out-of-date, but
     we can still recover.  It's a small window, but we might as well
     do what we can. */

  /* Even if db/current were missing, it would be created with 0 by
     get_youngest(), so this conditional remains valid. */
  if (youngest_rev > max_rev)
    return FUNC5(SVN_ERR_FS_CORRUPT, NULL,
                             FUNC1("Expected current rev to be <= %ld "
                               "but found %ld"), max_rev, youngest_rev);

  /* Before setting current, verify that there is a revprops file
     for the youngest revision.  (Issue #2992) */
  if (FUNC8(fs, max_rev))
    {
      revprop_accessible
        = FUNC9(&revprop_missing, fs, max_rev,
                                             scratch_pool);
    }
  else
    {
      svn_node_kind_t youngest_revprops_kind;
      FUNC0(FUNC15(FUNC10(fs, max_rev,
                                                        scratch_pool),
                                &youngest_revprops_kind, scratch_pool));

      if (youngest_revprops_kind == svn_node_file)
        {
          revprop_missing = FALSE;
          revprop_accessible = TRUE;
        }
      else if (youngest_revprops_kind != svn_node_none)
        {
          return FUNC5(SVN_ERR_FS_CORRUPT, NULL,
                                  FUNC1("Revision %ld has a non-file where its "
                                    "revprops file should be"),
                                  max_rev);
        }
    }

  if (!revprop_accessible)
    {
      if (revprop_missing)
        {
          return FUNC5(SVN_ERR_FS_CORRUPT, NULL,
                                  FUNC1("Revision %ld has a revs file but no "
                                    "revprops file"),
                                  max_rev);
        }
      else
        {
          return FUNC5(SVN_ERR_FS_CORRUPT, NULL,
                                  FUNC1("Revision %ld has a revs file but the "
                                    "revprops file is inaccessible"),
                                  max_rev);
        }
    }

  /* Prune younger-than-(newfound-youngest) revisions from the rep
     cache if sharing is enabled taking care not to create the cache
     if it does not exist. */
  if (ffd->rep_sharing_allowed)
    {
      svn_boolean_t rep_cache_exists;

      FUNC0(FUNC7(&rep_cache_exists, fs,
                                         scratch_pool));
      if (rep_cache_exists)
        FUNC0(FUNC6(fs, max_rev, scratch_pool));
    }

  /* Now store the discovered youngest revision, and the next IDs if
     relevant, in a new 'current' file. */
  return FUNC13(fs, max_rev, scratch_pool);
}