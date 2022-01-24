#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  abspath; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_12__ {scalar_t__ kind; } ;
typedef  TYPE_2__ svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_WC_DB_ERROR ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char const**,int /*<<< orphan*/ ,TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_checksum_sha1 ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__ const**,int /*<<< orphan*/ *,char const*,TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC11(const char **pristine_abspath,
                             svn_wc__db_t *db,
                             const char *wri_abspath,
                             const svn_checksum_t *sha1_checksum,
                             apr_pool_t *result_pool,
                             apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  svn_boolean_t present;

  FUNC1(pristine_abspath != NULL);
  FUNC1(FUNC6(wri_abspath));
  FUNC1(sha1_checksum != NULL);
  /* ### Transitional: accept MD-5 and look up the SHA-1.  Return an error
   * if the pristine text is not in the store. */
  if (sha1_checksum->kind != svn_checksum_sha1)
    FUNC0(FUNC9(&sha1_checksum, db, wri_abspath,
                                         sha1_checksum,
                                         scratch_pool, scratch_pool));
  FUNC1(sha1_checksum->kind == svn_checksum_sha1);

  FUNC0(FUNC10(&wcroot, &local_relpath,
                                             db, wri_abspath,
                                             scratch_pool, scratch_pool));
  FUNC2(wcroot);

  FUNC0(FUNC8(&present, db, wri_abspath, sha1_checksum,
                                    scratch_pool));
  if (! present)
    return FUNC7(SVN_ERR_WC_DB_ERROR, NULL,
                             FUNC3("The pristine text with checksum '%s' was "
                               "not found"),
                             FUNC5(sha1_checksum,
                                                             scratch_pool));

  FUNC0(FUNC4(pristine_abspath, wcroot->abspath,
                             sha1_checksum,
                             result_pool, scratch_pool));

  return SVN_NO_ERROR;
}