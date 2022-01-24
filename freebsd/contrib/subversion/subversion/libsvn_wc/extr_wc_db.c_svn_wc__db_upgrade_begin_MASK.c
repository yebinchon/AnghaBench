#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  abspath; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
struct TYPE_7__ {int /*<<< orphan*/  dir_data; int /*<<< orphan*/  state_pool; } ;
typedef  TYPE_2__ svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_sqlite__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FORMAT_FROM_SDB ; 
 int /*<<< orphan*/  SDB_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_unknown ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(svn_sqlite__db_t **sdb,
                         apr_int64_t *repos_id,
                         apr_int64_t *wc_id,
                         svn_wc__db_t *wc_db,
                         const char *dir_abspath,
                         const char *repos_root_url,
                         const char *repos_uuid,
                         apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;

  /* Upgrade is inherently exclusive so specify exclusive locking. */
  FUNC0(FUNC2(sdb, repos_id, wc_id, dir_abspath,
                    repos_root_url, repos_uuid,
                    SDB_FILE,
                    NULL, SVN_INVALID_REVNUM, svn_depth_unknown,
                    TRUE /* exclusive */,
                    0 /* timeout */,
                    wc_db->state_pool, scratch_pool));

  FUNC0(FUNC4(&wcroot,
                                       FUNC1(wc_db->state_pool,
                                                   dir_abspath),
                                       *sdb, *wc_id, FORMAT_FROM_SDB,
                                       FALSE /* auto-upgrade */,
                                       wc_db->state_pool, scratch_pool));

  /* The WCROOT is complete. Stash it into DB.  */
  FUNC3(wc_db->dir_data, wcroot->abspath, wcroot);

  return SVN_NO_ERROR;
}