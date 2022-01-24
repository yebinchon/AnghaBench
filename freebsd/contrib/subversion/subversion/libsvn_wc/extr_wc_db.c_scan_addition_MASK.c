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
struct TYPE_6__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int64_t ;

/* Variables and functions */
 scalar_t__ INVALID_REPOS_ID ; 
 int /*<<< orphan*/  STMT_SELECT_WORKING_NODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_UNEXPECTED_STATUS ; 
 scalar_t__ SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (char const**,char const**,char const*,int*,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  presence_map ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char const* FUNC8 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC9 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC10 (char const*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC11 (char const*,int,int /*<<< orphan*/ *) ; 
 char const* FUNC12 (char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int) ; 
 char* FUNC19 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_added ; 
 scalar_t__ svn_wc__db_status_copied ; 
 scalar_t__ svn_wc__db_status_incomplete ; 
 scalar_t__ svn_wc__db_status_moved_here ; 
 scalar_t__ svn_wc__db_status_normal ; 

__attribute__((used)) static svn_error_t *
FUNC25(svn_wc__db_status_t *status,
              const char **op_root_relpath_p,
              const char **repos_relpath,
              apr_int64_t *repos_id,
              const char **original_repos_relpath,
              apr_int64_t *original_repos_id,
              svn_revnum_t *original_revision,
              const char **moved_from_relpath,
              const char **moved_from_op_root_relpath,
              int *moved_from_op_depth,
              svn_wc__db_wcroot_t *wcroot,
              const char *local_relpath,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  const char *op_root_relpath;
  const char *build_relpath = "";

  /* Initialize most of the OUT parameters. Generally, we'll only be filling
     in a subset of these, so it is easier to init all up front. Note that
     the STATUS parameter will be initialized once we read the status of
     the specified node.  */
  if (op_root_relpath_p)
    *op_root_relpath_p = NULL;
  if (original_repos_relpath)
    *original_repos_relpath = NULL;
  if (original_repos_id)
    *original_repos_id = INVALID_REPOS_ID;
  if (original_revision)
    *original_revision = SVN_INVALID_REVNUM;
  if (moved_from_relpath)
    *moved_from_relpath = NULL;
  if (moved_from_op_root_relpath)
    *moved_from_op_root_relpath = NULL;
  if (moved_from_op_depth)
    *moved_from_op_depth = 0;

  {
    svn_sqlite__stmt_t *stmt;
    svn_boolean_t have_row;
    svn_wc__db_status_t presence;
    int op_depth;
    const char *repos_prefix_path;

    /* ### is it faster to fetch fewer columns? */
    FUNC0(FUNC21(&stmt, wcroot->sdb,
                                      STMT_SELECT_WORKING_NODE));
    FUNC0(FUNC13(stmt, "is", wcroot->wc_id, local_relpath));
    FUNC0(FUNC23(&have_row, stmt));

    if (!have_row)
      {
        /* Reset statement before returning */
        FUNC0(FUNC22(stmt));

        /* ### maybe we should return a usage error instead?  */
        return FUNC7(SVN_ERR_WC_PATH_NOT_FOUND, NULL,
                                 FUNC2("The node '%s' was not found."),
                                 FUNC5(wcroot,
                                                        local_relpath,
                                                        scratch_pool));
      }

    presence = FUNC20(stmt, 1, presence_map);

    /* The starting node should exist normally.  */
    op_depth = FUNC15(stmt, 0);
    if (op_depth == 0 || (presence != svn_wc__db_status_normal
                          && presence != svn_wc__db_status_incomplete))
      /* reset the statement as part of the error generation process */
      return FUNC7(SVN_ERR_WC_PATH_UNEXPECTED_STATUS,
                               FUNC22(stmt),
                               FUNC2("Expected node '%s' to be added."),
                               FUNC5(wcroot,
                                                      local_relpath,
                                                      scratch_pool));

    if (original_revision)
      *original_revision = FUNC18(stmt, 12);

    /* Provide the default status; we'll override as appropriate. */
    if (status)
      {
        if (presence == svn_wc__db_status_normal)
          *status = svn_wc__db_status_added;
        else
          *status = svn_wc__db_status_incomplete;
      }


    /* Calculate the op root local path components */
    op_root_relpath = FUNC11(local_relpath, op_depth,
                                         scratch_pool);
    repos_prefix_path = FUNC12(op_root_relpath,
                                                  local_relpath);

    if (op_root_relpath_p)
      *op_root_relpath_p = FUNC3(result_pool, op_root_relpath);

    /* ### This if-statement is quite redundant.
     * ### We're checking all these values again within the body anyway.
     * ### The body should be broken up appropriately and move into the
     * ### outer scope. */
    if (original_repos_relpath
        || original_repos_id
        || (original_revision
                && *original_revision == SVN_INVALID_REVNUM)
        || status
        || moved_from_relpath || moved_from_op_root_relpath)
      {
        if (local_relpath != op_root_relpath)
          /* requery to get the add/copy root */
          {
            FUNC0(FUNC22(stmt));

            FUNC0(FUNC13(stmt, "is",
                                      wcroot->wc_id, op_root_relpath));
            FUNC0(FUNC23(&have_row, stmt));

            if (!have_row)
              {
                /* Reset statement before returning */
                FUNC0(FUNC22(stmt));

                /* ### maybe we should return a usage error instead?  */
                return FUNC7(SVN_ERR_WC_PATH_NOT_FOUND, NULL,
                                         FUNC2("The node '%s' was not found."),
                                         FUNC5(wcroot,
                                                                op_root_relpath,
                                                                scratch_pool));
              }

            if (original_revision
                    && *original_revision == SVN_INVALID_REVNUM)
              *original_revision = FUNC18(stmt, 12);
          }

        if (original_repos_relpath)
          *original_repos_relpath = FUNC19(stmt, 11,
                                                            result_pool);

        if (!FUNC17(stmt, 10)
            && (status
                || original_repos_id
                || moved_from_relpath || moved_from_op_root_relpath))
          /* If column 10 (original_repos_id) is NULL,
             this is a plain add, not a copy or a move */
          {
            svn_boolean_t moved_here;
            if (original_repos_id)
              *original_repos_id = FUNC16(stmt, 10);

            moved_here = FUNC14(stmt, 13 /* moved_here */);
            if (status)
              *status = moved_here ? svn_wc__db_status_moved_here
                                   : svn_wc__db_status_copied;

            if (moved_here
                && (moved_from_relpath || moved_from_op_root_relpath))
              {
                svn_error_t *err;

                err = FUNC4(moved_from_relpath,
                                          moved_from_op_root_relpath,
                                          op_root_relpath,
                                          moved_from_op_depth,
                                          wcroot, local_relpath,
                                          result_pool,
                                          scratch_pool);

                if (err)
                  return FUNC6(
                                err, FUNC22(stmt));
              }
          }
      }


    /* ### This loop here is to skip up to the first node which is a BASE node,
       because base_get_info() doesn't accommodate the scenario that
       we're looking at here; we found the true op_root, which may be inside
       further changed trees. */
    if (repos_relpath || repos_id)
      {
        const char *base_relpath;

        while (TRUE)
          {
            const char *tmp;

            FUNC0(FUNC22(stmt));

            /* Pointing at op_depth, look at the parent */
            repos_prefix_path =
                FUNC10(FUNC8(op_root_relpath, NULL),
                                 repos_prefix_path,
                                 scratch_pool);
            op_root_relpath = FUNC9(op_root_relpath, scratch_pool);


            FUNC0(FUNC13(stmt, "is", wcroot->wc_id, op_root_relpath));
            FUNC0(FUNC23(&have_row, stmt));

            if (! have_row)
              break;

            op_depth = FUNC15(stmt, 0);

            /* Skip to op_depth */
            tmp = op_root_relpath;

            op_root_relpath = FUNC11(op_root_relpath, op_depth,
                                                 scratch_pool);
            repos_prefix_path = FUNC10(
                                                 FUNC12(op_root_relpath, tmp),
                                                 repos_prefix_path, scratch_pool);
          }

      FUNC0(FUNC22(stmt));

      build_relpath = repos_prefix_path;

      /* If we're here, then we have an added/copied/moved (start) node, and
         CURRENT_ABSPATH now points to a BASE node. Figure out the repository
         information for the current node, and use that to compute the start
         node's repository information.  */
      FUNC0(FUNC24(NULL, NULL, NULL,
                                                &base_relpath, repos_id,
                                                NULL, NULL, NULL, NULL, NULL,
                                                NULL, NULL, NULL, NULL, NULL,
                                                wcroot, op_root_relpath,
                                                scratch_pool, scratch_pool));

        if (repos_relpath)
          *repos_relpath = FUNC10(base_relpath, build_relpath,
                                            result_pool);
      }
    else
      FUNC0(FUNC22(stmt));
  }
  /* Postconditions */
#ifdef SVN_DEBUG
  if (status)
    {
      SVN_ERR_ASSERT(*status == svn_wc__db_status_added
                     || *status == svn_wc__db_status_copied
                     || *status == svn_wc__db_status_incomplete
                     || *status == svn_wc__db_status_moved_here);
      if (*status == svn_wc__db_status_added)
        {
          SVN_ERR_ASSERT(!original_repos_relpath
                         || *original_repos_relpath == NULL);
          SVN_ERR_ASSERT(!original_revision
                         || *original_revision == SVN_INVALID_REVNUM);
          SVN_ERR_ASSERT(!original_repos_id
                         || *original_repos_id == INVALID_REPOS_ID);
        }
      /* An upgrade with a missing directory can leave INCOMPLETE working
         op-roots. See upgrade_tests.py 29: upgrade with missing replaced dir
       */
      else if (*status != svn_wc__db_status_incomplete)
        {
          SVN_ERR_ASSERT(!original_repos_relpath
                         || *original_repos_relpath != NULL);
          SVN_ERR_ASSERT(!original_revision
                         || *original_revision != SVN_INVALID_REVNUM);
          SVN_ERR_ASSERT(!original_repos_id
                         || *original_repos_id != INVALID_REPOS_ID);
        }
    }
  SVN_ERR_ASSERT(!op_root_relpath_p || *op_root_relpath_p != NULL);
#endif

  return SVN_NO_ERROR;
}