#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {scalar_t__ apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
struct TYPE_22__ {int node_status; int prop_status; char* local_abspath; char const* revision; scalar_t__ repos_node_status; char const* changed_rev; char* changed_author; TYPE_2__* lock; scalar_t__ copied; scalar_t__ wc_is_locked; scalar_t__ versioned; TYPE_1__* repos_lock; scalar_t__ moved_to_abspath; scalar_t__ moved_from_abspath; scalar_t__ conflicted; } ;
typedef  TYPE_4__ svn_client_status_t ;
struct TYPE_23__ {int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_5__ svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  enum svn_wc_status_kind { ____Placeholder_svn_wc_status_kind } svn_wc_status_kind ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_20__ {scalar_t__ token; } ;
struct TYPE_19__ {scalar_t__ token; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 scalar_t__ SVN_ERR_WC_UPGRADE_REQUIRED ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 scalar_t__ TRUE ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__ const*) ; 
 char* FUNC8 (char const*,char const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 TYPE_3__* FUNC10 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ **,char const*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,char,int /*<<< orphan*/ ,char,char,...) ; 
 char* FUNC14 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 TYPE_3__* FUNC16 (scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int svn_wc_status_added ; 
 scalar_t__ svn_wc_status_none ; 

__attribute__((used)) static svn_error_t *
FUNC17(const char *target_abspath,
             const char *target_path,
             const char *path,
             svn_boolean_t detailed,
             svn_boolean_t show_last_committed,
             svn_boolean_t repos_locks,
             const svn_client_status_t *status,
             unsigned int *text_conflicts,
             unsigned int *prop_conflicts,
             unsigned int *tree_conflicts,
             svn_client_ctx_t *ctx,
             apr_pool_t *pool)
{
  enum svn_wc_status_kind node_status = status->node_status;
  enum svn_wc_status_kind prop_status = status->prop_status;
  char tree_status_code = ' ';
  const char *tree_desc_line = "";
  const char *moved_from_line = "";
  const char *moved_to_line = "";

  /* For historic reasons svn ignores the property status for added nodes, even
     if these nodes were copied and have local property changes.

     Note that it doesn't do this on replacements, or children of copies.

     ### Our test suite would catch more errors if we reported property
         changes on copies. */
  if (node_status == svn_wc_status_added)
      prop_status = svn_wc_status_none;

  /* To indicate this node is the victim of a tree conflict, we show
     'C' in the tree-conflict column, overriding any other status.
     We also print a separate line describing the nature of the tree
     conflict. */
  if (status->conflicted)
    {
      const char *desc;
      const char *local_abspath = status->local_abspath;
      svn_boolean_t text_conflicted;
      svn_boolean_t prop_conflicted;
      svn_boolean_t tree_conflicted;

      if (status->versioned)
        {
          svn_error_t *err;

          err = FUNC16(&text_conflicted,
                                     &prop_conflicted,
                                     &tree_conflicted, ctx->wc_ctx,
                                     local_abspath, pool);

          if (err && err->apr_err == SVN_ERR_WC_UPGRADE_REQUIRED)
            {
              FUNC15(err);
              text_conflicted = FALSE;
              prop_conflicted = FALSE;
              tree_conflicted = FALSE;
            }
          else
            FUNC0(err);
        }
      else
        {
          text_conflicted = FALSE;
          prop_conflicted = FALSE;
          tree_conflicted = TRUE;
        }

      if (tree_conflicted)
        {
          svn_client_conflict_t *tree_conflict;

          FUNC0(FUNC11(&tree_conflict, local_abspath,
                                          ctx, pool, pool));
          tree_status_code = 'C';
          FUNC0(FUNC10(
                            &desc, tree_conflict, pool));
          tree_desc_line = FUNC3(pool, "\n      >   %s", desc);
          (*tree_conflicts)++;
        }
      else if (text_conflicted)
        (*text_conflicts)++;
      else if (prop_conflicted)
        (*prop_conflicts)++;
    }

  /* Note that moved-from and moved-to information is only available in STATUS
   * for (op-)roots of a move. Those are exactly the nodes we want to show
   * move info for in 'svn status'. See also comments in svn_wc_status3_t. */
  if (status->moved_from_abspath && status->moved_to_abspath &&
      FUNC9(status->moved_from_abspath, status->moved_to_abspath) == 0)
    {
      const char *relpath;

      relpath = FUNC8(target_abspath, target_path,
                             status->moved_from_abspath,
                             pool, pool);
      relpath = FUNC14(relpath, pool);
      moved_from_line = FUNC4(pool, "\n        > ",
                                    FUNC3(pool,
                                                 FUNC2("swapped places with %s"),
                                                 relpath),
                                    SVN_VA_NULL);
    }
  else if (status->moved_from_abspath || status->moved_to_abspath)
    {
      const char *relpath;

      if (status->moved_from_abspath)
        {
          relpath = FUNC8(target_abspath, target_path,
                                 status->moved_from_abspath,
                                 pool, pool);
          relpath = FUNC14(relpath, pool);
          moved_from_line = FUNC4(pool, "\n        > ",
                                        FUNC3(pool, FUNC2("moved from %s"),
                                                     relpath),
                                        SVN_VA_NULL);
        }

      if (status->moved_to_abspath)
        {
          relpath = FUNC8(target_abspath, target_path,
                                 status->moved_to_abspath,
                                 pool, pool);
          relpath = FUNC14(relpath, pool);
          moved_to_line = FUNC4(pool, "\n        > ",
                                      FUNC3(pool, FUNC2("moved to %s"),
                                                   relpath),
                                      SVN_VA_NULL);
        }
    }

  path = FUNC14(path, pool);

  if (detailed)
    {
      char ood_status, lock_status;
      const char *working_rev;

      if (! status->versioned)
        working_rev = "";
      else if (status->copied
               || ! FUNC1(status->revision))
        working_rev = "-";
      else
        working_rev = FUNC3(pool, "%ld", status->revision);

      if (status->repos_node_status != svn_wc_status_none)
        ood_status = '*';
      else
        ood_status = ' ';

      if (repos_locks)
        {
          if (status->repos_lock)
            {
              if (status->lock)
                {
                  if (FUNC9(status->repos_lock->token, status->lock->token)
                      == 0)
                    lock_status = 'K';
                  else
                    lock_status = 'T';
                }
              else
                lock_status = 'O';
            }
          else if (status->lock)
            lock_status = 'B';
          else
            lock_status = ' ';
        }
      else
        lock_status = (status->lock) ? 'K' : ' ';

      if (show_last_committed)
        {
          const char *commit_rev;
          const char *commit_author;

          if (FUNC1(status->changed_rev))
            commit_rev = FUNC3(pool, "%ld", status->changed_rev);
          else if (status->versioned)
            commit_rev = " ? ";
          else
            commit_rev = "";

          if (status->changed_author)
            commit_author = status->changed_author;
          else if (status->versioned)
            commit_author = " ? ";
          else
            commit_author = "";

          FUNC0
            (FUNC13(pool,
                                "%c%c%c%c%c%c%c %c %8s %8s %-12s %s%s%s%s\n",
                                FUNC6(FUNC5(status)),
                                FUNC6(prop_status),
                                status->wc_is_locked ? 'L' : ' ',
                                status->copied ? '+' : ' ',
                                FUNC7(status),
                                lock_status,
                                tree_status_code,
                                ood_status,
                                working_rev,
                                commit_rev,
                                commit_author,
                                path,
                                moved_to_line,
                                moved_from_line,
                                tree_desc_line));
        }
      else
        FUNC0(
           FUNC13(pool, "%c%c%c%c%c%c%c %c %8s   %s%s%s%s\n",
                              FUNC6(FUNC5(status)),
                              FUNC6(prop_status),
                              status->wc_is_locked ? 'L' : ' ',
                              status->copied ? '+' : ' ',
                              FUNC7(status),
                              lock_status,
                              tree_status_code,
                              ood_status,
                              working_rev,
                              path,
                              moved_to_line,
                              moved_from_line,
                              tree_desc_line));
    }
  else
    FUNC0(
       FUNC13(pool, "%c%c%c%c%c%c%c %s%s%s%s\n",
                          FUNC6(FUNC5(status)),
                          FUNC6(prop_status),
                          status->wc_is_locked ? 'L' : ' ',
                          status->copied ? '+' : ' ',
                          FUNC7(status),
                          ((status->lock)
                           ? 'K' : ' '),
                          tree_status_code,
                          path,
                          moved_to_line,
                          moved_from_line,
                          tree_desc_line));

  return FUNC12(stdout);
}