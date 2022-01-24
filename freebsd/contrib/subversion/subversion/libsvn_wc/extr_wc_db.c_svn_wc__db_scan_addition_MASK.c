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
struct TYPE_7__ {int /*<<< orphan*/  abspath; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  INVALID_REPOS_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const**,char const**,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,char const**,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(svn_wc__db_status_t *status,
                         const char **op_root_abspath,
                         const char **repos_relpath,
                         const char **repos_root_url,
                         const char **repos_uuid,
                         const char **original_repos_relpath,
                         const char **original_root_url,
                         const char **original_uuid,
                         svn_revnum_t *original_revision,
                         svn_wc__db_t *db,
                         const char *local_abspath,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  const char *op_root_relpath = NULL;
  apr_int64_t repos_id = INVALID_REPOS_ID;
  apr_int64_t original_repos_id = INVALID_REPOS_ID;
  apr_int64_t *repos_id_p
    = (repos_root_url || repos_uuid) ? &repos_id : NULL;
  apr_int64_t *original_repos_id_p
    = (original_root_url || original_uuid) ? &original_repos_id : NULL;

  FUNC1(FUNC5(local_abspath));

  FUNC0(FUNC8(&wcroot, &local_relpath, db,
                              local_abspath, scratch_pool, scratch_pool));
  FUNC3(wcroot);

  FUNC2(
          FUNC4(status,
                        op_root_abspath
                                ? &op_root_relpath
                                : NULL,
                        repos_relpath, repos_id_p,
                        original_repos_relpath, original_repos_id_p,
                        original_revision,
                        NULL, NULL, NULL,
                        wcroot, local_relpath, result_pool, scratch_pool),
          FUNC7(repos_root_url, repos_uuid, wcroot,
                                      repos_id, result_pool),
          FUNC7(original_root_url, original_uuid,
                                      wcroot, original_repos_id,
                                      result_pool),
          SVN_NO_ERROR,
          wcroot);

  if (op_root_abspath)
    *op_root_abspath = FUNC6(wcroot->abspath, op_root_relpath,
                                       result_pool);
  /* REPOS_ID must be valid if requested; ORIGINAL_REPOS_ID need not be. */
  FUNC1(repos_id_p == NULL || repos_id != INVALID_REPOS_ID);

  return SVN_NO_ERROR;
}