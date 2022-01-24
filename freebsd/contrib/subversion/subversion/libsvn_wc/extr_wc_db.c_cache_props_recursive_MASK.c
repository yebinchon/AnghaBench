#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  wc_id; int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {scalar_t__ pristine; int /*<<< orphan*/  changelists; int /*<<< orphan*/  depth; } ;
typedef  TYPE_2__ cache_props_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int STMT_CACHE_TARGET_PRISTINE_PROPS ; 
 int STMT_CACHE_TARGET_PROPS ; 
 int /*<<< orphan*/  STMT_CREATE_TARGET_PROP_CACHE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(void *cb_baton,
                      svn_wc__db_wcroot_t *wcroot,
                      const char *local_relpath,
                      apr_pool_t *scratch_pool)
{
  cache_props_baton_t *baton = cb_baton;
  svn_sqlite__stmt_t *stmt;
  int stmt_idx;

  FUNC0(FUNC1(wcroot, local_relpath, baton->depth,
                                baton->changelists, scratch_pool));

  FUNC0(FUNC3(wcroot->sdb,
                                      STMT_CREATE_TARGET_PROP_CACHE));

  if (baton->pristine)
    stmt_idx = STMT_CACHE_TARGET_PRISTINE_PROPS;
  else
    stmt_idx = STMT_CACHE_TARGET_PROPS;

  FUNC0(FUNC4(&stmt, wcroot->sdb, stmt_idx));
  FUNC0(FUNC2(stmt, 1, wcroot->wc_id));
  FUNC0(FUNC5(stmt));

  return SVN_NO_ERROR;
}