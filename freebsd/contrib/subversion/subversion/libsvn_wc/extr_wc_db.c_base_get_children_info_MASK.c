#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct svn_wc__db_base_info_t {char const* repos_root_url; int /*<<< orphan*/  lock; int /*<<< orphan*/  update_root; int /*<<< orphan*/  depth; int /*<<< orphan*/  revnum; void* kind; void* status; void* repos_relpath; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int64_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 scalar_t__ INVALID_REPOS_ID ; 
 int /*<<< orphan*/  STMT_SELECT_BASE_CHILDREN_INFO ; 
 int /*<<< orphan*/  STMT_SELECT_BASE_CHILDREN_INFO_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 struct svn_wc__db_base_info_t* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  depth_map ; 
 int /*<<< orphan*/  kind_map ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  presence_map ; 
 int /*<<< orphan*/  svn_depth_unknown ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,struct svn_wc__db_base_info_t*) ; 
 char* FUNC7 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 void* FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 void* FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (char const**,int /*<<< orphan*/ *,TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC19(apr_hash_t **nodes,
                       svn_wc__db_wcroot_t *wcroot,
                       const char *local_relpath,
                       svn_boolean_t obtain_locks,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  apr_int64_t last_repos_id = INVALID_REPOS_ID;
  const char *last_repos_root_url = NULL;

  *nodes = FUNC1(result_pool);

  FUNC0(FUNC15(&stmt, wcroot->sdb,
                                    obtain_locks
                                      ? STMT_SELECT_BASE_CHILDREN_INFO_LOCK
                                      : STMT_SELECT_BASE_CHILDREN_INFO));
  FUNC0(FUNC8(stmt, "is", wcroot->wc_id, local_relpath));

  FUNC0(FUNC17(&have_row, stmt));

  while (have_row)
    {
      struct svn_wc__db_base_info_t *info;
      apr_int64_t repos_id;
      const char *child_relpath = FUNC12(stmt, 0, NULL);
      const char *name = FUNC7(child_relpath, result_pool);

      info = FUNC2(result_pool, sizeof(*info));

      repos_id = FUNC10(stmt, 1);
      info->repos_relpath = FUNC12(stmt, 2, result_pool);
      info->status = FUNC13(stmt, 3, presence_map);
      info->kind = FUNC13(stmt, 4, kind_map);
      info->revnum = FUNC11(stmt, 5);

      info->depth = FUNC14(stmt, 6, depth_map,
                                                  svn_depth_unknown);

      info->update_root = FUNC9(stmt, 7);

      if (obtain_locks)
        info->lock = FUNC3(stmt, 8, 9, 10, 11, result_pool);

      if (repos_id != last_repos_id)
        {
          svn_error_t *err;

          err = FUNC18(&last_repos_root_url, NULL,
                                            wcroot, repos_id,
                                            result_pool);

          if (err)
            return FUNC5(
                     FUNC4(err,
                                              FUNC16(stmt)));

          last_repos_id = repos_id;
        }

      info->repos_root_url = last_repos_root_url;

      FUNC6(*nodes, name, info);

      FUNC0(FUNC17(&have_row, stmt));
    }

  FUNC0(FUNC16(stmt));

  return SVN_NO_ERROR;
}