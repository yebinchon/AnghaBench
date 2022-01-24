#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct with_triggers_baton_t {int /*<<< orphan*/  cb_func; struct revert_baton_t* cb_baton; int /*<<< orphan*/ * member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct revert_baton_t {int /*<<< orphan*/  clear_changelists; int /*<<< orphan*/ * db; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_CREATE_REVERT_LIST ; 
 int /*<<< orphan*/  STMT_DROP_REVERT_LIST_TRIGGERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_UNSUPPORTED_FEATURE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  op_revert_recursive_txn ; 
 int /*<<< orphan*/  op_revert_txn ; 
#define  svn_depth_empty 129 
#define  svn_depth_infinity 128 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct with_triggers_baton_t*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC11(svn_wc__db_t *db,
                     const char *local_abspath,
                     svn_depth_t depth,
                     svn_boolean_t clear_changelists,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  struct revert_baton_t rvb;
  struct with_triggers_baton_t wtb = { STMT_CREATE_REVERT_LIST,
                                       STMT_DROP_REVERT_LIST_TRIGGERS,
                                       NULL, NULL};

  FUNC1(FUNC6(local_abspath));

  rvb.db = db;
  rvb.clear_changelists = clear_changelists;
  wtb.cb_baton = &rvb;

  switch (depth)
    {
    case svn_depth_empty:
      wtb.cb_func = op_revert_txn;
      break;
    case svn_depth_infinity:
      wtb.cb_func = op_revert_recursive_txn;
      break;
    default:
      return FUNC8(SVN_ERR_UNSUPPORTED_FEATURE, NULL,
                               FUNC4("Unsupported depth for revert of '%s'"),
                               FUNC7(local_abspath,
                                                      scratch_pool));
    }

  FUNC0(FUNC9(&wcroot, &local_relpath,
                              db, local_abspath, scratch_pool, scratch_pool));
  FUNC3(wcroot);

  FUNC2(FUNC10(&wtb, wcroot, local_relpath, scratch_pool),
                      wcroot);

  FUNC0(FUNC5(wcroot, local_abspath, depth, scratch_pool));

  return SVN_NO_ERROR;
}