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
typedef  int /*<<< orphan*/  svn_error_t ;
struct svn_wc__db_info_t {char const* repos_relpath; char const* repos_root_url; char const* repos_uuid; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const**,char const**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(const char **repos_relpath,
                           const char **repos_root_url,
                           const char **repos_uuid,
                           const struct svn_wc__db_info_t *info,
                           const char *parent_repos_relpath,
                           const char *parent_repos_root_url,
                           const char *parent_repos_uuid,
                           svn_wc__db_t *db,
                           const char *local_abspath,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  if (info->repos_relpath && info->repos_root_url)
    {
      *repos_relpath = FUNC1(result_pool, info->repos_relpath);
      *repos_root_url = FUNC1(result_pool, info->repos_root_url);
      *repos_uuid = FUNC1(result_pool, info->repos_uuid);
    }
  else if (parent_repos_relpath && parent_repos_root_url)
    {
      *repos_relpath = FUNC3(parent_repos_relpath,
                                        FUNC2(local_abspath,
                                                            NULL),
                                        result_pool);
      *repos_root_url = FUNC1(result_pool, parent_repos_root_url);
      *repos_uuid = FUNC1(result_pool, parent_repos_uuid);
    }
  else
    {
      FUNC0(FUNC4(NULL,
                                         repos_relpath, repos_root_url,
                                         repos_uuid,
                                         db, local_abspath,
                                         result_pool, scratch_pool));
    }

  return SVN_NO_ERROR;
}