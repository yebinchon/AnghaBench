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
struct set_changelist_baton_t {scalar_t__ new_changelist; int /*<<< orphan*/  changelist_filter; int /*<<< orphan*/  depth; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMT_CREATE_CHANGELIST_LIST ; 
 int /*<<< orphan*/  STMT_CREATE_CHANGELIST_TRIGGER ; 
 int /*<<< orphan*/  STMT_DELETE_ACTUAL_EMPTIES ; 
 int /*<<< orphan*/  STMT_INSERT_ACTUAL_EMPTIES_FILES ; 
 int /*<<< orphan*/  STMT_MARK_SKIPPED_CHANGELIST_DIRS ; 
 int /*<<< orphan*/  STMT_UPDATE_ACTUAL_CHANGELISTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(void *baton,
                   svn_wc__db_wcroot_t *wcroot,
                   const char *local_relpath,
                   apr_pool_t *scratch_pool)
{
  struct set_changelist_baton_t *scb = baton;
  svn_sqlite__stmt_t *stmt;

  FUNC0(FUNC1(wcroot, local_relpath, scb->depth,
                                scb->changelist_filter, scratch_pool));

  /* Ensure we have actual nodes for our targets. */
  if (scb->new_changelist)
    {
      FUNC0(FUNC4(&stmt, wcroot->sdb,
                                        STMT_INSERT_ACTUAL_EMPTIES_FILES));
      FUNC0(FUNC5(stmt));
    }

  /* Now create our notification table. */
  FUNC0(FUNC3(wcroot->sdb,
                                      STMT_CREATE_CHANGELIST_LIST));
  FUNC0(FUNC3(wcroot->sdb,
                                      STMT_CREATE_CHANGELIST_TRIGGER));

  /* Update our changelists. */
  FUNC0(FUNC4(&stmt, wcroot->sdb,
                                    STMT_UPDATE_ACTUAL_CHANGELISTS));
  FUNC0(FUNC2(stmt, "iss", wcroot->wc_id, local_relpath,
                            scb->new_changelist));
  FUNC0(FUNC5(stmt));

  if (scb->new_changelist)
    {
      /* We have to notify that we skipped directories, so do that now. */
      FUNC0(FUNC4(&stmt, wcroot->sdb,
                                        STMT_MARK_SKIPPED_CHANGELIST_DIRS));
      FUNC0(FUNC2(stmt, "iss", wcroot->wc_id, local_relpath,
                                scb->new_changelist));
      FUNC0(FUNC5(stmt));
    }

  /* We may have left empty ACTUAL nodes, so remove them.  This is only a
     potential problem if we removed changelists. */
  if (!scb->new_changelist)
    {
      FUNC0(FUNC4(&stmt, wcroot->sdb,
                                        STMT_DELETE_ACTUAL_EMPTIES));
      FUNC0(FUNC2(stmt, "is", wcroot->wc_id, local_relpath));
      FUNC0(FUNC5(stmt));
    }

  return SVN_NO_ERROR;
}