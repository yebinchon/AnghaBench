#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  void* svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_wc__db_lock_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_filesize_t ;
struct TYPE_18__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  void* svn_depth_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  INVALID_REPOS_ID ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  STMT_SELECT_ACTUAL_NODE ; 
 int /*<<< orphan*/  STMT_SELECT_NODE_INFO ; 
 int /*<<< orphan*/  STMT_SELECT_NODE_INFO_WITH_LOCK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 scalar_t__ SVN_ERR_WC_CORRUPT ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 (TYPE_2__**,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void**,void*) ; 
 int /*<<< orphan*/  depth_map ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  kind_map ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  presence_map ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ *) ; 
 void* svn_depth_unknown ; 
 TYPE_2__* FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC12 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_symlink ; 
 scalar_t__ svn_node_unknown ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 char* FUNC20 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC21 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC23 (int*,int /*<<< orphan*/ *) ; 
 void* svn_wc__db_status_normal ; 

__attribute__((used)) static svn_error_t *
FUNC24(svn_wc__db_status_t *status,
          svn_node_kind_t *kind,
          svn_revnum_t *revision,
          const char **repos_relpath,
          apr_int64_t *repos_id,
          svn_revnum_t *changed_rev,
          apr_time_t *changed_date,
          const char **changed_author,
          svn_depth_t *depth,
          const svn_checksum_t **checksum,
          const char **target,
          const char **original_repos_relpath,
          apr_int64_t *original_repos_id,
          svn_revnum_t *original_revision,
          svn_wc__db_lock_t **lock,
          svn_filesize_t *recorded_size,
          apr_time_t *recorded_time,
          const char **changelist,
          svn_boolean_t *conflicted,
          svn_boolean_t *op_root,
          svn_boolean_t *had_props,
          svn_boolean_t *props_mod,
          svn_boolean_t *have_base,
          svn_boolean_t *have_more_work,
          svn_boolean_t *have_work,
          svn_wc__db_wcroot_t *wcroot,
          const char *local_relpath,
          apr_pool_t *result_pool,
          apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt_info;
  svn_sqlite__stmt_t *stmt_act;
  svn_boolean_t have_info;
  svn_boolean_t have_act;
  svn_error_t *err = NULL;

  /* Obtain the most likely to exist record first, to make sure we don't
     have to obtain the SQLite read-lock multiple times */
  FUNC1(FUNC21(&stmt_info, wcroot->sdb,
                                    lock ? STMT_SELECT_NODE_INFO_WITH_LOCK
                                         : STMT_SELECT_NODE_INFO));
  FUNC1(FUNC14(stmt_info, "is", wcroot->wc_id, local_relpath));
  FUNC1(FUNC23(&have_info, stmt_info));

  if (changelist || conflicted || props_mod)
    {
      FUNC1(FUNC21(&stmt_act, wcroot->sdb,
                                        STMT_SELECT_ACTUAL_NODE));
      FUNC1(FUNC14(stmt_act, "is", wcroot->wc_id, local_relpath));
      FUNC1(FUNC23(&have_act, stmt_act));
    }
  else
    {
      have_act = FALSE;
      stmt_act = NULL;
    }

  if (have_info)
    {
      int op_depth;
      svn_node_kind_t node_kind;

      op_depth = FUNC16(stmt_info, 0);
      node_kind = FUNC4(&err, stmt_info, 4, kind_map);

      if (status)
        {
          *status = FUNC4(&err, stmt_info, 3, presence_map);

          if (op_depth != 0) /* WORKING */
            err = FUNC11(err,
                                           FUNC5(status,
                                                                     *status));
        }
      if (kind)
        {
          *kind = node_kind;
        }
      if (op_depth != 0)
        {
          if (repos_id)
            *repos_id = INVALID_REPOS_ID;
          if (revision)
            *revision = SVN_INVALID_REVNUM;
          if (repos_relpath)
            /* Our path is implied by our parent somewhere up the tree.
               With the NULL value and status, the caller will know to
               search up the tree for the base of our path.  */
            *repos_relpath = NULL;
        }
      else
        {
          /* Fetch repository information. If we have a
             WORKING_NODE (and have been added), then the repository
             we're being added to will be dependent upon a parent. The
             caller can scan upwards to locate the repository.  */
          FUNC10(repos_id, revision, repos_relpath,
                                      stmt_info, 1, 5, 2, result_pool);
        }
      if (changed_rev)
        {
          *changed_rev = FUNC19(stmt_info, 8);
        }
      if (changed_date)
        {
          *changed_date = FUNC17(stmt_info, 9);
        }
      if (changed_author)
        {
          *changed_author = FUNC20(stmt_info, 10,
                                                    result_pool);
        }
      if (recorded_time)
        {
          *recorded_time = FUNC17(stmt_info, 13);
        }
      if (depth)
        {
          if (node_kind != svn_node_dir)
            *depth = svn_depth_unknown;
          else if (FUNC18(stmt_info, 11))
            *depth = svn_depth_unknown;
          else
            *depth = FUNC4(&err, stmt_info, 11, depth_map);
        }
      if (checksum)
        {
          if (node_kind != svn_node_file)
            {
              *checksum = NULL;
            }
          else
            {

              err = FUNC11(
                        err, FUNC15(checksum, stmt_info, 6,
                                                         result_pool));
            }
        }
      if (recorded_size)
        {
          *recorded_size = FUNC6(stmt_info, 7);
        }
      if (target)
        {
          if (node_kind != svn_node_symlink)
            *target = NULL;
          else
            *target = FUNC20(stmt_info, 12, result_pool);
        }
      if (changelist)
        {
          if (have_act)
            *changelist = FUNC20(stmt_act, 0, result_pool);
          else
            *changelist = NULL;
        }
      if (op_depth == 0)
        {
          if (original_repos_id)
            *original_repos_id = INVALID_REPOS_ID;
          if (original_revision)
            *original_revision = SVN_INVALID_REVNUM;
          if (original_repos_relpath)
            *original_repos_relpath = NULL;
        }
      else
        {
          FUNC10(original_repos_id,
                                      original_revision,
                                      original_repos_relpath,
                                      stmt_info, 1, 5, 2, result_pool);
        }
      if (props_mod)
        {
          *props_mod = have_act && !FUNC18(stmt_act, 1);
        }
      if (had_props)
        {
          *had_props = FUNC0(stmt_info, 14);
        }
      if (conflicted)
        {
          if (have_act)
            {
              *conflicted =
                 !FUNC18(stmt_act, 2); /* conflict_data */
            }
          else
            *conflicted = FALSE;
        }

      if (lock)
        {
          if (op_depth != 0)
            *lock = NULL;
          else
            *lock = FUNC7(stmt_info, 17, 18, 19, 20, result_pool);
        }

      if (have_work)
        *have_work = (op_depth != 0);

      if (op_root)
        {
          *op_root = ((op_depth > 0)
                      && (op_depth == FUNC9(local_relpath)));
        }

      if (have_base || have_more_work)
        {
          if (have_more_work)
            *have_more_work = FALSE;

          while (!err && op_depth != 0)
            {
              err = FUNC23(&have_info, stmt_info);

              if (err || !have_info)
                break;

              op_depth = FUNC16(stmt_info, 0);

              if (have_more_work)
                {
                  if (op_depth > 0)
                    *have_more_work = TRUE;

                  if (!have_base)
                   break;
                }
            }

          if (have_base)
            *have_base = (op_depth == 0);
        }
    }
  else if (have_act)
    {
      /* A row in ACTUAL_NODE should never exist without a corresponding
         node in BASE_NODE and/or WORKING_NODE unless it flags a tree conflict. */
      if (FUNC18(stmt_act, 2)) /* conflict_data */
          err = FUNC12(SVN_ERR_WC_CORRUPT, NULL,
                                  FUNC3("Corrupt data for '%s'"),
                                  FUNC8(wcroot, local_relpath,
                                                         scratch_pool));
      /* ### What should we return?  Should we have a separate
             function for reading actual-only nodes? */

      /* As a safety measure, until we decide if we want to use
         read_info for actual-only nodes, make sure the caller asked
         for the conflict status. */
      FUNC2(conflicted);

      if (status)
        *status = svn_wc__db_status_normal;  /* What! No it's not! */
      if (kind)
        *kind = svn_node_unknown;
      if (revision)
        *revision = SVN_INVALID_REVNUM;
      if (repos_relpath)
        *repos_relpath = NULL;
      if (repos_id)
        *repos_id = INVALID_REPOS_ID;
      if (changed_rev)
        *changed_rev = SVN_INVALID_REVNUM;
      if (changed_date)
        *changed_date = 0;
      if (depth)
        *depth = svn_depth_unknown;
      if (checksum)
        *checksum = NULL;
      if (target)
        *target = NULL;
      if (original_repos_relpath)
        *original_repos_relpath = NULL;
      if (original_repos_id)
        *original_repos_id = INVALID_REPOS_ID;
      if (original_revision)
        *original_revision = SVN_INVALID_REVNUM;
      if (lock)
        *lock = NULL;
      if (recorded_size)
        *recorded_size = 0;
      if (recorded_time)
        *recorded_time = 0;
      if (changelist)
        *changelist = FUNC20(stmt_act, 0, result_pool);
      if (op_root)
        *op_root = FALSE;
      if (had_props)
        *had_props = FALSE;
      if (props_mod)
        *props_mod = FALSE;
      if (conflicted)
        *conflicted = TRUE;
      if (have_base)
        *have_base = FALSE;
      if (have_more_work)
        *have_more_work = FALSE;
      if (have_work)
        *have_work = FALSE;
    }
  else
    {
      err = FUNC12(SVN_ERR_WC_PATH_NOT_FOUND, NULL,
                              FUNC3("The node '%s' was not found."),
                              FUNC8(wcroot, local_relpath,
                                                     scratch_pool));
    }

  if (stmt_act != NULL)
    err = FUNC11(err, FUNC22(stmt_act));

  if (err && err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
    err = FUNC13(err, FUNC3("Error reading node '%s'"),
                                local_relpath);

  FUNC1(FUNC11(err, FUNC22(stmt_info)));

  return SVN_NO_ERROR;
}