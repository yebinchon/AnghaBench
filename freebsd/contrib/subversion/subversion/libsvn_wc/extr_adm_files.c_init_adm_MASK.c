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
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * SVN_WC__ADM_ENTRIES ; 
 int /*<<< orphan*/ * SVN_WC__ADM_FORMAT ; 
 int /*<<< orphan*/  SVN_WC__ADM_PRISTINE ; 
 int /*<<< orphan*/  SVN_WC__NON_ENTRIES_STRING ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_wc__db_t *db,
         const char *local_abspath,
         const char *repos_relpath,
         const char *repos_root_url,
         const char *repos_uuid,
         svn_revnum_t initial_rev,
         svn_depth_t depth,
         apr_pool_t *pool)
{
  /* First, make an empty administrative area. */
  FUNC0(FUNC3(FUNC5(local_abspath, NULL, pool),
                                 APR_OS_DEFAULT, pool));

  /** Make subdirectories. ***/

  /* SVN_WC__ADM_PRISTINE */
  FUNC0(FUNC2(local_abspath, SVN_WC__ADM_PRISTINE, pool));

  /* ### want to add another directory? do a format bump to ensure that
     ### all existing working copies get the new directories. or maybe
     ### create-on-demand (more expensive)  */

  /** Init the tmp area. ***/
  FUNC0(FUNC1(local_abspath, pool));

  /* Create the SDB. */
  FUNC0(FUNC6(db, local_abspath,
                          repos_relpath, repos_root_url, repos_uuid,
                          initial_rev, depth,
                          pool));

  /* Stamp ENTRIES and FORMAT files for old clients.  */
  FUNC0(FUNC4(FUNC5(local_abspath,
                                               SVN_WC__ADM_ENTRIES,
                                               pool),
                             SVN_WC__NON_ENTRIES_STRING,
                             pool));
  FUNC0(FUNC4(FUNC5(local_abspath,
                                               SVN_WC__ADM_FORMAT,
                                               pool),
                             SVN_WC__NON_ENTRIES_STRING,
                             pool));

  return SVN_NO_ERROR;
}