#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_17__ {int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_1__ svn_client_ctx_t ;
struct TYPE_18__ {struct conflict_tree_local_missing_details* tree_conflict_local_details; int /*<<< orphan*/  pool; int /*<<< orphan*/  local_abspath; } ;
typedef  TYPE_2__ svn_client_conflict_t ;
struct TYPE_19__ {scalar_t__ rev; } ;
typedef  TYPE_3__ svn_client__pathrev_t ;
struct conflict_tree_local_missing_details {char const* deleted_rev_author; int /*<<< orphan*/ * sibling_moves; int /*<<< orphan*/ * moves; int /*<<< orphan*/  deleted_repos_relpath; scalar_t__ deleted_rev; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 struct conflict_tree_local_missing_details* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char const*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,char const*,char const*,char const*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**,char const*,scalar_t__,char const*,scalar_t__,char const*,char const*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const**,scalar_t__*,char const*,scalar_t__,char const*,scalar_t__,TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ **,TYPE_2__*,char const*,char const*,scalar_t__,int /*<<< orphan*/ ,char const*,scalar_t__,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char const**,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,scalar_t__*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const**,scalar_t__*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC9 (TYPE_2__*) ; 
 char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC12 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,char const**,char const**,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC16(svn_client_conflict_t *conflict,
                                        svn_client_ctx_t *ctx,
                                        apr_pool_t *scratch_pool)
{
  const char *old_repos_relpath;
  const char *new_repos_relpath;
  const char *parent_repos_relpath;
  svn_revnum_t parent_peg_rev;
  svn_revnum_t old_rev;
  svn_revnum_t new_rev;
  svn_revnum_t deleted_rev;
  const char *deleted_rev_author;
  svn_node_kind_t replacing_node_kind;
  const char *deleted_basename;
  struct conflict_tree_local_missing_details *details;
  apr_array_header_t *moves = NULL;
  apr_array_header_t *sibling_moves = NULL;
  const char *related_repos_relpath;
  svn_revnum_t related_peg_rev;
  const char *repos_root_url;
  const char *repos_uuid;

  FUNC0(FUNC8(
            &old_repos_relpath, &old_rev, NULL, conflict,
            scratch_pool, scratch_pool));
  FUNC0(FUNC7(
            &new_repos_relpath, &new_rev, NULL, conflict,
            scratch_pool, scratch_pool));

  /* Scan the conflict victim's parent's log to find a revision which
   * deleted the node. */
  deleted_basename = FUNC10(conflict->local_abspath,
                                         scratch_pool);
  FUNC0(FUNC15(&parent_peg_rev, &parent_repos_relpath,
                                      &repos_root_url, &repos_uuid,
                                      ctx->wc_ctx,
                                      FUNC11(
                                        conflict->local_abspath,
                                        scratch_pool),
                                      scratch_pool,
                                      scratch_pool));

  /* Pick the younger incoming node as our 'related node' which helps
   * pin-pointing the deleted conflict victim in history. */
  related_repos_relpath = 
            (old_rev < new_rev ? new_repos_relpath : old_repos_relpath);
  related_peg_rev = (old_rev < new_rev ? new_rev : old_rev);

  /* Make sure we're going to search the related node in a revision where
   * it exists. The younger incoming node might have been deleted in HEAD. */
  if (related_repos_relpath != NULL && related_peg_rev != SVN_INVALID_REVNUM)
    FUNC0(FUNC4(
              &related_repos_relpath, &related_peg_rev,
              related_repos_relpath, related_peg_rev,
              (old_rev < new_rev ? old_repos_relpath : new_repos_relpath),
              (old_rev < new_rev ? old_rev : new_rev),
              conflict, ctx, scratch_pool, scratch_pool));
    
  FUNC0(FUNC5(
            &deleted_rev, &deleted_rev_author, &replacing_node_kind, &moves,
            conflict, deleted_basename, parent_repos_relpath,
            parent_peg_rev, 0, related_repos_relpath, related_peg_rev,
            ctx, conflict->pool, scratch_pool));

  /* If the victim was not deleted then check if the related path was moved. */
  if (deleted_rev == SVN_INVALID_REVNUM)
    {
      const char *victim_abspath;
      svn_ra_session_t *ra_session;
      const char *url, *corrected_url;
      svn_client__pathrev_t *yca_loc;
      svn_revnum_t end_rev;
      svn_node_kind_t related_node_kind;

      /* ### The following describes all moves in terms of forward-merges,
       * should do we something else for reverse-merges? */

      victim_abspath = FUNC9(conflict);
      url = FUNC12(repos_root_url, related_repos_relpath,
                                        scratch_pool);
      FUNC0(FUNC6(&ra_session,
                                                   &corrected_url,
                                                   url, NULL, NULL,
                                                   FALSE,
                                                   FALSE,
                                                   ctx,
                                                   scratch_pool,
                                                   scratch_pool));

      /* Set END_REV to our best guess of the nearest YCA revision. */
      FUNC0(FUNC3(&yca_loc, related_repos_relpath, related_peg_rev,
                               parent_repos_relpath, parent_peg_rev,
                               repos_root_url, repos_uuid, ra_session, ctx,
                               scratch_pool, scratch_pool));
      if (yca_loc == NULL)
        return SVN_NO_ERROR;
      end_rev = yca_loc->rev;

      /* END_REV must be smaller than RELATED_PEG_REV, else the call
         to find_moves_in_natural_history() below will error out. */
      if (end_rev >= related_peg_rev)
        end_rev = related_peg_rev > 0 ? related_peg_rev - 1 : 0;

      FUNC0(FUNC13(ra_session, "", related_peg_rev,
                                &related_node_kind, scratch_pool));
      FUNC0(FUNC2(&sibling_moves,
                                            related_repos_relpath,
                                            related_peg_rev,
                                            related_node_kind,
                                            end_rev,
                                            victim_abspath,
                                            repos_root_url, repos_uuid,
                                            ra_session, ctx,
                                            conflict->pool, scratch_pool));

      if (sibling_moves == NULL)
        return SVN_NO_ERROR;

      /* ## TODO: Find the missing node in the WC. */
    }

  details = FUNC1(conflict->pool, sizeof(*details));
  details->deleted_rev = deleted_rev;
  details->deleted_rev_author = deleted_rev_author;
  if (deleted_rev != SVN_INVALID_REVNUM)
    details->deleted_repos_relpath = FUNC14(parent_repos_relpath,
                                                      deleted_basename,
                                                      conflict->pool); 
  details->moves = moves;
  details->sibling_moves = sibling_moves;
                                         
  conflict->tree_conflict_local_details = details;

  return SVN_NO_ERROR;
}