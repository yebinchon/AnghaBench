#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  sdb; int /*<<< orphan*/  abspath; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,char const*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_infinity ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 char* FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC10(svn_boolean_t *moved_back,
                               svn_wc__db_t *db,
                               const char *local_abspath,
                               const char *moved_from_abspath,
                               const svn_skel_t *work_items,
                               apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  const char *moved_from_relpath;
  FUNC1(FUNC7(local_abspath));

  FUNC0(FUNC9(&wcroot, &local_relpath, db,
                                                local_abspath,
                                                scratch_pool, scratch_pool));
  FUNC3(wcroot);

  if (moved_back)
    *moved_back = FALSE;

  moved_from_relpath = FUNC8(wcroot->abspath,
                                                moved_from_abspath);

  if (! local_relpath[0]
      || !moved_from_relpath)
    {
       /* WC-Roots can't be moved */
      FUNC0(FUNC4(wcroot->sdb, work_items, scratch_pool));
      return SVN_NO_ERROR;
    }

  FUNC2(FUNC6(moved_back, wcroot, local_relpath,
                                       moved_from_relpath, work_items,
                                       scratch_pool),
                      wcroot);

  FUNC0(FUNC5(wcroot, local_abspath, svn_depth_infinity,
                        scratch_pool));

  return SVN_NO_ERROR;
}