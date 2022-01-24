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
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADM_EMPTY_FILE ; 
 int /*<<< orphan*/  ADM_README ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  PROPS_SUBDIR ; 
 int /*<<< orphan*/  PROP_BASE_FOR_DIR ; 
 int /*<<< orphan*/  PROP_BASE_SUBDIR ; 
 int /*<<< orphan*/  PROP_REVERT_FOR_DIR ; 
 int /*<<< orphan*/  PROP_WORKING_FOR_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_WC__ADM_ENTRIES ; 
 int /*<<< orphan*/  SVN_WC__ADM_FORMAT ; 
 int /*<<< orphan*/  TEXT_BASE_SUBDIR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WCPROPS_ALL_DATA ; 
 int /*<<< orphan*/  WCPROPS_FNAME_FOR_DIR ; 
 int /*<<< orphan*/  WCPROPS_SUBDIR_FOR_FILES ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  db ; 
 int /*<<< orphan*/  iterpool ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(const char *wcroot_abspath, apr_pool_t *scratch_pool)
{
  /* Zap unused files.  */
  FUNC2(FUNC4(
                    FUNC5(wcroot_abspath,
                                      SVN_WC__ADM_FORMAT,
                                      scratch_pool),
                    TRUE, scratch_pool));
  FUNC2(FUNC4(
                    FUNC5(wcroot_abspath,
                                      SVN_WC__ADM_ENTRIES,
                                      scratch_pool),
                    TRUE, scratch_pool));
  FUNC2(FUNC4(
                    FUNC5(wcroot_abspath,
                                      ADM_EMPTY_FILE,
                                      scratch_pool),
                    TRUE, scratch_pool));
  FUNC2(FUNC4(
                    FUNC5(wcroot_abspath,
                                      ADM_README,
                                      scratch_pool),
                    TRUE, scratch_pool));

  /* For formats <= SVN_WC__WCPROPS_MANY_FILES_VERSION, we toss the wcprops
     for the directory itself, and then all the wcprops for the files.  */
  FUNC2(FUNC4(
                    FUNC5(wcroot_abspath,
                                      WCPROPS_FNAME_FOR_DIR,
                                      scratch_pool),
                    TRUE, scratch_pool));
  FUNC2(FUNC3(
                    FUNC5(wcroot_abspath,
                                      WCPROPS_SUBDIR_FOR_FILES,
                                      scratch_pool),
                    FALSE, NULL, NULL, scratch_pool));

  /* And for later formats, they are aggregated into one file.  */
  FUNC2(FUNC4(
                    FUNC5(wcroot_abspath,
                                      WCPROPS_ALL_DATA,
                                      scratch_pool),
                    TRUE, scratch_pool));

  /* Remove the old text-base directory and the old text-base files. */
  FUNC2(FUNC3(
                    FUNC5(wcroot_abspath,
                                      TEXT_BASE_SUBDIR,
                                      scratch_pool),
                    FALSE, NULL, NULL, scratch_pool));

  /* Remove the old properties files... whole directories at a time.  */
  FUNC2(FUNC3(
                    FUNC5(wcroot_abspath,
                                      PROPS_SUBDIR,
                                      scratch_pool),
                    FALSE, NULL, NULL, scratch_pool));
  FUNC2(FUNC3(
                    FUNC5(wcroot_abspath,
                                      PROP_BASE_SUBDIR,
                                      scratch_pool),
                    FALSE, NULL, NULL, scratch_pool));
  FUNC2(FUNC4(
                     FUNC5(wcroot_abspath,
                                       PROP_WORKING_FOR_DIR,
                                       scratch_pool),
                     TRUE, scratch_pool));
  FUNC2(FUNC4(
                     FUNC5(wcroot_abspath,
                                      PROP_BASE_FOR_DIR,
                                      scratch_pool),
                     TRUE, scratch_pool));
  FUNC2(FUNC4(
                     FUNC5(wcroot_abspath,
                                      PROP_REVERT_FOR_DIR,
                                      scratch_pool),
                     TRUE, scratch_pool));

#if 0
  /* ### this checks for a write-lock, and we are not (always) taking out
     ### a write lock in all callers.  */
  SVN_ERR(svn_wc__adm_cleanup_tmp_area(db, wcroot_abspath, iterpool));
#endif

  /* Remove the old-style lock file LAST.  */
  FUNC2(FUNC4(
                    FUNC1(wcroot_abspath, scratch_pool),
                    TRUE, scratch_pool));
}