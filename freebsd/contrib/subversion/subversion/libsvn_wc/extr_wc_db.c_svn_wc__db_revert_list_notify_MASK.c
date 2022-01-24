#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  action; void* kind; } ;
typedef  TYPE_1__ svn_wc_notify_t ;
typedef  int /*<<< orphan*/  (* svn_wc_notify_func2_t ) (void*,TYPE_1__*,int /*<<< orphan*/ *) ;
struct TYPE_9__ {int /*<<< orphan*/  sdb; int /*<<< orphan*/  abspath; } ;
typedef  TYPE_3__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_DELETE_REVERT_LIST_RECURSIVE ; 
 int /*<<< orphan*/  STMT_SELECT_REVERT_LIST_RECURSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  kind_map ; 
 int /*<<< orphan*/  kind_map_none ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char const*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 char* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_revert ; 
 int /*<<< orphan*/  svn_wc_notify_tree_conflict ; 

svn_error_t *
FUNC19(svn_wc_notify_func2_t notify_func,
                              void *notify_baton,
                              svn_wc__db_t *db,
                              const char *local_abspath,
                              apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  apr_pool_t *iterpool = FUNC6(scratch_pool);

  FUNC0(FUNC17(&wcroot, &local_relpath,
                              db, local_abspath, scratch_pool, iterpool));
  FUNC2(wcroot);

  FUNC0(FUNC13(&stmt, wcroot->sdb,
                                    STMT_SELECT_REVERT_LIST_RECURSIVE));
  FUNC0(FUNC8(stmt, "s", local_relpath));
  FUNC0(FUNC15(&have_row, stmt));
  if (!have_row)
    return FUNC4(FUNC14(stmt)); /* optimise for no row */
  while (have_row)
    {
      const char *notify_relpath = FUNC11(stmt, 0, NULL);
      svn_wc_notify_t *notify;

      FUNC5(iterpool);

      notify = FUNC18(FUNC3(wcroot->abspath,
                                                    notify_relpath,
                                                    iterpool),
                                    svn_wc_notify_revert,
                                    iterpool);

      if (!FUNC10(stmt, 1))
        notify->kind = FUNC12(stmt, 1, kind_map);
      else
        {
          if (!FUNC10(stmt, 3))
            notify->kind = FUNC12(stmt, 3, kind_map_none);

          switch (FUNC9(stmt, 2))
            {
              case 0:
                continue;
              case 1:
                /* standard revert */
                break;
              case 2:
                notify->action = svn_wc_notify_tree_conflict;
                break;
              default:
                FUNC1();
            }
        }

      notify_func(notify_baton, notify, iterpool);

      FUNC0(FUNC15(&have_row, stmt));
    }
  FUNC0(FUNC14(stmt));

  FUNC0(FUNC13(&stmt, wcroot->sdb,
                                    STMT_DELETE_REVERT_LIST_RECURSIVE));
  FUNC0(FUNC8(stmt, "s", local_relpath));
  FUNC0(FUNC16(stmt));

  FUNC7(iterpool);

  return SVN_NO_ERROR;
}