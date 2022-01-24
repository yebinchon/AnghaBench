#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_notify_func2_t ;
struct TYPE_9__ {int /*<<< orphan*/  abspath; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int*,TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC10(svn_wc__db_t *db,
                               const char *local_abspath,
                               const char *del_op_root_abspath,
                               svn_boolean_t mark_tc_resolved,
                               svn_wc_notify_func2_t notify_func,
                               void *notify_baton,
                               apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  const char *del_relpath;
  int src_op_depth;

  FUNC0(FUNC9(&wcroot, &local_relpath,
                                                db, local_abspath,
                                                scratch_pool, scratch_pool));
  FUNC2(wcroot);

  if (del_op_root_abspath)
    del_relpath = FUNC6(wcroot->abspath,
                                           del_op_root_abspath);
  else
    del_relpath = NULL;


  FUNC1(
    FUNC4(&src_op_depth, wcroot, local_relpath,
                      del_relpath ? FUNC5(del_relpath)
                                 : FUNC5(local_relpath),
                      scratch_pool),
    FUNC3(wcroot, db, local_relpath, src_op_depth,
                     scratch_pool),
    mark_tc_resolved
        ? FUNC7(wcroot, local_relpath, db,
                                               FALSE, FALSE, TRUE,
                                               NULL, scratch_pool)
        : SVN_NO_ERROR,
    SVN_NO_ERROR,
    wcroot);

  FUNC0(FUNC8(wcroot,
                                             SVN_INVALID_REVNUM,
                                             SVN_INVALID_REVNUM,
                                             notify_func, notify_baton,
                                             scratch_pool));
  return SVN_NO_ERROR;
}