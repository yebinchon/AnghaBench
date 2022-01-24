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
typedef  int /*<<< orphan*/  svn_error_t ;
struct repos_info_baton {char const* last_repos; char const* last_uuid; int /*<<< orphan*/ * state_pool; int /*<<< orphan*/  ctx; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const**,char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC4(const char **repos_root,
                 const char **repos_uuid,
                 void *baton,
                 const char *url,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  struct repos_info_baton *ri = baton;

  /* The same info is likely to retrieved multiple times (e.g. externals) */
  if (ri->last_repos && FUNC3(ri->last_repos, url))
    {
      *repos_root = FUNC1(result_pool, ri->last_repos);
      *repos_uuid = FUNC1(result_pool, ri->last_uuid);
      return SVN_NO_ERROR;
    }

  FUNC0(FUNC2(repos_root, repos_uuid, url, ri->ctx,
                                    result_pool, scratch_pool));

  /* Store data for further calls */
  ri->last_repos = FUNC1(ri->state_pool, *repos_root);
  ri->last_uuid = FUNC1(ri->state_pool, *repos_uuid);

  return SVN_NO_ERROR;
}