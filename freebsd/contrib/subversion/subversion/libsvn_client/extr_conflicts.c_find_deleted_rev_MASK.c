#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_14__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  revision; } ;
typedef  TYPE_1__ svn_wc_notify_t ;
struct TYPE_21__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
struct TYPE_22__ {int /*<<< orphan*/  revprops; int /*<<< orphan*/  revision; int /*<<< orphan*/  changed_paths2; } ;
typedef  TYPE_3__ svn_log_entry_t ;
struct TYPE_23__ {char action; int /*<<< orphan*/  node_kind; } ;
typedef  TYPE_4__ svn_log_changed_path2_t ;
struct TYPE_24__ {scalar_t__ apr_err; } ;
typedef  TYPE_5__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_client__pathrev_t ;
typedef  scalar_t__ svn_boolean_t ;
struct repos_move_info {int /*<<< orphan*/  moved_from_repos_relpath; int /*<<< orphan*/  moved_to_repos_relpath; } ;
struct find_deleted_rev_baton {scalar_t__ related_peg_rev; int /*<<< orphan*/  replacing_node_kind; int /*<<< orphan*/  deleted_rev_author; int /*<<< orphan*/  result_pool; int /*<<< orphan*/  deleted_rev; int /*<<< orphan*/  deleted_repos_relpath; struct repos_move_info* move; int /*<<< orphan*/  moves_table; TYPE_14__* ctx; int /*<<< orphan*/  extra_ra_session; int /*<<< orphan*/  repos_uuid; int /*<<< orphan*/  repos_root_url; int /*<<< orphan*/ * related_repos_relpath; int /*<<< orphan*/  victim_abspath; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;
struct TYPE_19__ {int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  (* notify_func2 ) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  SVN_ERR_CEASE_INVOCATION ; 
 scalar_t__ SVN_ERR_FS_NOT_FOUND ; 
 scalar_t__ SVN_INVALID_REVNUM ; 
 TYPE_5__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_REVISION_AUTHOR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_14__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct repos_move_info* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 TYPE_5__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC13 (TYPE_5__*) ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_node_none ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_tree_conflict_details_progress ; 

__attribute__((used)) static svn_error_t *
FUNC22(void *baton,
                 svn_log_entry_t *log_entry,
                 apr_pool_t *scratch_pool)
{
  struct find_deleted_rev_baton *b = baton;
  apr_hash_index_t *hi;
  apr_pool_t *iterpool;
  svn_boolean_t deleted_node_found = FALSE;
  svn_node_kind_t replacing_node_kind = svn_node_none;

  if (b->ctx->notify_func2)
    {
      svn_wc_notify_t *notify;

      notify = FUNC21(
                 b->victim_abspath,
                 svn_wc_notify_tree_conflict_details_progress,
                 scratch_pool),
      notify->revision = log_entry->revision;
      b->ctx->notify_func2(b->ctx->notify_baton2, notify, scratch_pool);
    }

  /* No paths were changed in this revision.  Nothing to do. */
  if (! log_entry->changed_paths2)
    return SVN_NO_ERROR;

  iterpool = FUNC17(scratch_pool);
  for (hi = FUNC1(scratch_pool, log_entry->changed_paths2);
       hi != NULL;
       hi = FUNC3(hi))
    {
      const char *changed_path = FUNC4(hi);
      svn_log_changed_path2_t *log_item = FUNC5(hi);

      FUNC16(iterpool);

      /* ### Remove leading slash from paths in log entries. */
      if (changed_path[0] == '/')
          changed_path++;

      /* Check if we already found the deleted node we're looking for. */
      if (!deleted_node_found &&
          FUNC15(b->deleted_repos_relpath, changed_path) == 0 &&
          (log_item->action == 'D' || log_item->action == 'R'))
        {
          deleted_node_found = TRUE;

          if (b->related_repos_relpath != NULL &&
              b->related_peg_rev != SVN_INVALID_REVNUM)
            {
              svn_client__pathrev_t *yca_loc;
              svn_error_t *err;

              /* We found a deleted node which occupies the correct path.
               * To be certain that this is the deleted node we're looking for,
               * we must establish whether it is ancestrally related to the
               * "related node" specified in our baton. */
              err = FUNC7(&yca_loc,
                             b->related_repos_relpath,
                             b->related_peg_rev,
                             b->deleted_repos_relpath,
                             FUNC9(log_entry->revision),
                             b->repos_root_url, b->repos_uuid,
                             b->extra_ra_session, b->ctx, iterpool, iterpool);
              if (err)
                {
                  /* ### Happens for moves within other moves and copies. */
                  if (err->apr_err == SVN_ERR_FS_NOT_FOUND)
                    {
                      FUNC11(err);
                      yca_loc = NULL;
                    }
                  else
                    return FUNC13(err);
                }

              deleted_node_found = (yca_loc != NULL);
            }

          if (deleted_node_found && log_item->action == 'R')
            replacing_node_kind = log_item->node_kind;
        }
    }
  FUNC18(iterpool);

  if (!deleted_node_found)
    {
      apr_array_header_t *moves;

      moves = FUNC2(b->moves_table, &log_entry->revision,
                           sizeof(svn_revnum_t));
      if (moves)
        {
          struct repos_move_info *move;

          move = FUNC8(b->deleted_repos_relpath,
                                          moves, scratch_pool);
          if (move)
            {
              const char *relpath;

              /* The node was moved. Update our search path accordingly. */
              b->move = move;
              relpath = FUNC20(move->moved_to_repos_relpath,
                                                  b->deleted_repos_relpath);
              if (relpath)
                b->deleted_repos_relpath =
                  FUNC19(move->moved_from_repos_relpath, relpath,
                                   b->result_pool);
            }
        }
    }
  else
    {
      svn_string_t *author;

      b->deleted_rev = log_entry->revision;
      author = FUNC14(log_entry->revprops,
                             SVN_PROP_REVISION_AUTHOR);
      if (author)
        b->deleted_rev_author = FUNC6(b->result_pool, author->data);
      else
        b->deleted_rev_author = FUNC0("unknown author");
          
      b->replacing_node_kind = replacing_node_kind;

      /* We're done. Abort the log operation. */
      return FUNC12(SVN_ERR_CEASE_INVOCATION, NULL, NULL);
    }

  return SVN_NO_ERROR;
}