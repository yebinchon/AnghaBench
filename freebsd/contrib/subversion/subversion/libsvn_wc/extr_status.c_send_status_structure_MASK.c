#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* svn_wc_status_func4_t ) (void*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
struct TYPE_3__ {int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ svn_wc__internal_status_t ;
typedef  int /*<<< orphan*/  svn_lock_t ;
typedef  int /*<<< orphan*/  svn_io_dirent2_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct walk_status_baton {int /*<<< orphan*/  check_working_copy; int /*<<< orphan*/  ignore_text_mods; int /*<<< orphan*/  db; scalar_t__ repos_locks; } ;
struct svn_wc__db_info_t {int dummy; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,int /*<<< orphan*/ ,char const*,char const*,char const*,char const*,struct svn_wc__db_info_t const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const**,char const**,char const**,struct svn_wc__db_info_t const*,char const*,char const*,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC7(const struct walk_status_baton *wb,
                      const char *local_abspath,
                      const char *parent_repos_root_url,
                      const char *parent_repos_relpath,
                      const char *parent_repos_uuid,
                      const struct svn_wc__db_info_t *info,
                      const svn_io_dirent2_t *dirent,
                      svn_boolean_t get_all,
                      svn_wc_status_func4_t status_func,
                      void *status_baton,
                      apr_pool_t *scratch_pool)
{
  svn_wc__internal_status_t *statstruct;
  const svn_lock_t *repos_lock = NULL;

  /* Check for a repository lock. */
  if (wb->repos_locks)
    {
      const char *repos_relpath, *repos_root_url, *repos_uuid;

      FUNC0(FUNC2(&repos_relpath, &repos_root_url,
                                         &repos_uuid,
                                         info, parent_repos_relpath,
                                         parent_repos_root_url,
                                         parent_repos_uuid,
                                         wb->db, local_abspath,
                                         scratch_pool, scratch_pool));
      if (repos_relpath)
        {
          /* repos_lock still uses the deprecated filesystem absolute path
             format */
          repos_lock = FUNC6(wb->repos_locks,
                                     FUNC5("/", repos_relpath,
                                                      scratch_pool));
        }
    }

  FUNC0(FUNC1(&statstruct, wb->db, local_abspath,
                          parent_repos_root_url, parent_repos_relpath,
                          parent_repos_uuid,
                          info, dirent, get_all,
                          wb->ignore_text_mods, wb->check_working_copy,
                          repos_lock, scratch_pool, scratch_pool));

  if (statstruct && status_func)
    return FUNC4((*status_func)(status_baton, local_abspath,
                                          &statstruct->s,
                                          scratch_pool));

  return SVN_NO_ERROR;
}