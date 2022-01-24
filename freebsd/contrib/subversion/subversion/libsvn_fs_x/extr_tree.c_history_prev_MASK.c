#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
struct TYPE_19__ {int /*<<< orphan*/  change_set; } ;
struct TYPE_18__ {char const* created_path; TYPE_2__ predecessor_id; } ;
typedef  TYPE_1__ svn_fs_x__noderev_t ;
typedef  TYPE_2__ svn_fs_x__id_t ;
struct TYPE_20__ {int /*<<< orphan*/ * node; } ;
typedef  TYPE_3__ svn_fs_x__dag_path_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
struct TYPE_21__ {TYPE_5__* fsap_data; } ;
typedef  TYPE_4__ svn_fs_history_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
struct TYPE_22__ {char* path; scalar_t__ revision; int is_interesting; scalar_t__ next_copy; char* path_hint; scalar_t__ rev_hint; TYPE_2__ current_id; int /*<<< orphan*/ * fs; } ;
typedef  TYPE_5__ fs_history_data_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_INVALID_REVNUM ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int TRUE ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *,char const*,scalar_t__,int,char const*,scalar_t__,scalar_t__,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,char const**,int /*<<< orphan*/ *,TYPE_3__*) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__**,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 scalar_t__ FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 char* FUNC18 (char const*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC19 (char const*,char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC20(svn_fs_history_t **prev_history,
             svn_fs_history_t *history,
             svn_boolean_t cross_copies,
             apr_pool_t *result_pool,
             apr_pool_t *scratch_pool)
{
  fs_history_data_t *fhd = history->fsap_data;
  const char *commit_path, *src_path, *path = fhd->path;
  svn_revnum_t commit_rev, src_rev, dst_rev;
  svn_revnum_t revision = fhd->revision;
  svn_fs_t *fs = fhd->fs;
  svn_fs_x__dag_path_t *dag_path;
  dag_node_t *node;
  svn_fs_root_t *root;
  svn_boolean_t reported = fhd->is_interesting;
  svn_revnum_t copyroot_rev;
  const char *copyroot_path;
  svn_fs_x__id_t pred_id;

  /* Initialize our return value. */
  *prev_history = NULL;

  /* When following history, there tend to be long sections of linear
     history where there are no copies at PATH or its parents.  Within
     these sections, we only need to follow the node history. */
  if (   FUNC1(fhd->next_copy)
      && revision > fhd->next_copy
      && FUNC16(&fhd->current_id))
    {
      /* We know the last reported node (CURRENT_ID) and the NEXT_COPY
         revision is somewhat further in the past. */
      svn_fs_x__noderev_t *noderev;
      FUNC3(reported);

      /* Get the previous node change.  If there is none, then we already
         reported the initial addition and this history traversal is done. */
      FUNC0(FUNC12(&noderev, fs, &fhd->current_id,
                                          scratch_pool, scratch_pool));
      if (! FUNC16(&noderev->predecessor_id))
        return SVN_NO_ERROR;

      /* If the previous node change is younger than the next copy, it is
         part of the linear history section. */
      commit_rev = FUNC13(noderev->predecessor_id.change_set);
      if (commit_rev > fhd->next_copy)
        {
          /* Within the linear history, simply report all node changes and
             continue with the respective predecessor. */
          *prev_history = FUNC2(fs, noderev->created_path,
                                           commit_rev, TRUE, NULL,
                                           SVN_INVALID_REVNUM,
                                           fhd->next_copy,
                                           &noderev->predecessor_id,
                                           result_pool);

          return SVN_NO_ERROR;
        }

     /* We hit a copy. Fall back to the standard code path. */
    }

  /* If our last history report left us hints about where to pickup
     the chase, then our last report was on the destination of a
     copy.  If we are crossing copies, start from those locations,
     otherwise, we're all done here.  */
  if (fhd->path_hint && FUNC1(fhd->rev_hint))
    {
      reported = FALSE;
      if (! cross_copies)
        return SVN_NO_ERROR;
      path = fhd->path_hint;
      revision = fhd->rev_hint;
    }

  /* Construct a ROOT for the current revision. */
  FUNC0(FUNC17(&root, fs, revision, scratch_pool));

  /* Open PATH/REVISION, and get its node and a bunch of other
     goodies.  */
  FUNC0(FUNC11(&dag_path, root, path, 0, FALSE,
                                 scratch_pool, scratch_pool));
  node = dag_path->node;
  commit_path = FUNC7(node);
  commit_rev = FUNC10(node);
  FUNC15(&pred_id);

  /* The Subversion filesystem is written in such a way that a given
     line of history may have at most one interesting history point
     per filesystem revision.  Either that node was edited (and
     possibly copied), or it was copied but not edited.  And a copy
     source cannot be from the same revision as its destination.  So,
     if our history revision matches its node's commit revision, we
     know that ... */
  if (revision == commit_rev)
    {
      if (! reported)
        {
          /* ... we either have not yet reported on this revision (and
             need now to do so) ... */
          *prev_history = FUNC2(fs, commit_path,
                                           commit_rev, TRUE, NULL,
                                           SVN_INVALID_REVNUM,
                                           SVN_INVALID_REVNUM, NULL,
                                           result_pool);
          return SVN_NO_ERROR;
        }
      else
        {
          /* ... or we *have* reported on this revision, and must now
             progress toward this node's predecessor (unless there is
             no predecessor, in which case we're all done!). */
          pred_id = *FUNC9(node);
          if (!FUNC16(&pred_id))
            return SVN_NO_ERROR;

          /* Replace NODE and friends with the information from its
             predecessor. */
          FUNC0(FUNC8(&node, fs, &pred_id, scratch_pool,
                                         scratch_pool));
          commit_path = FUNC7(node);
          commit_rev = FUNC10(node);
        }
    }

  /* Find the youngest copyroot in the path of this node, including
     itself. */
  FUNC0(FUNC4(&copyroot_rev, &copyroot_path, fs,
                                 dag_path));

  /* Initialize some state variables. */
  src_path = NULL;
  src_rev = SVN_INVALID_REVNUM;
  dst_rev = SVN_INVALID_REVNUM;

  if (copyroot_rev > commit_rev)
    {
      const char *remainder_path;
      const char *copy_dst, *copy_src;
      svn_fs_root_t *copyroot_root;

      FUNC0(FUNC17(&copyroot_root, fs, copyroot_rev,
                                       scratch_pool));
      FUNC0(FUNC14(&node, copyroot_root,
                                          copyroot_path, scratch_pool));
      copy_dst = FUNC7(node);

      /* If our current path was the very destination of the copy,
         then our new current path will be the copy source.  If our
         current path was instead the *child* of the destination of
         the copy, then figure out its previous location by taking its
         path relative to the copy destination and appending that to
         the copy source.  Finally, if our current path doesn't meet
         one of these other criteria ... ### for now just fallback to
         the old copy hunt algorithm. */
      remainder_path = FUNC19(copy_dst, path);

      if (remainder_path)
        {
          /* If we get here, then our current path is the destination
             of, or the child of the destination of, a copy.  Fill
             in the return values and get outta here.  */
          src_rev = FUNC6(node);
          copy_src = FUNC5(node);

          dst_rev = copyroot_rev;
          src_path = FUNC18(copy_src, remainder_path, scratch_pool);
        }
    }

  /* If we calculated a copy source path and revision, we'll make a
     'copy-style' history object. */
  if (src_path && FUNC1(src_rev))
    {
      svn_boolean_t retry = FALSE;

      /* It's possible for us to find a copy location that is the same
         as the history point we've just reported.  If that happens,
         we simply need to take another trip through this history
         search. */
      if ((dst_rev == revision) && reported)
        retry = TRUE;

      *prev_history = FUNC2(fs, path, dst_rev, ! retry,
                                       src_path, src_rev,
                                       SVN_INVALID_REVNUM, NULL,
                                       result_pool);
    }
  else
    {
      /* We know the next copy revision.  If we are not at the copy rev
         itself, we will also know the predecessor node ID and the next
         invocation will use the optimized "linear history" code path. */
      *prev_history = FUNC2(fs, commit_path, commit_rev, TRUE,
                                       NULL, SVN_INVALID_REVNUM,
                                       copyroot_rev, &pred_id, result_pool);
    }

  return SVN_NO_ERROR;
}