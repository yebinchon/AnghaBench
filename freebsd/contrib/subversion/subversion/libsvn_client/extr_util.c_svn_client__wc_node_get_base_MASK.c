#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_4__ {int /*<<< orphan*/  repos_root_url; int /*<<< orphan*/  url; int /*<<< orphan*/  repos_uuid; int /*<<< orphan*/  rev; } ;
typedef  TYPE_1__ svn_client__pathrev_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC4(svn_client__pathrev_t **base_p,
                             const char *wc_abspath,
                             svn_wc_context_t *wc_ctx,
                             apr_pool_t *result_pool,
                             apr_pool_t *scratch_pool)
{
  const char *relpath;

  *base_p = FUNC1(result_pool, sizeof(**base_p));

  FUNC0(FUNC3(NULL,
                                &(*base_p)->rev,
                                &relpath,
                                &(*base_p)->repos_root_url,
                                &(*base_p)->repos_uuid,
                                NULL,
                                wc_ctx, wc_abspath,
                                TRUE /* ignore_enoent */,
                                result_pool, scratch_pool));
  if ((*base_p)->repos_root_url && relpath)
    {
      (*base_p)->url = FUNC2(
                           (*base_p)->repos_root_url, relpath, result_pool);
    }
  else
    {
      *base_p = NULL;
    }
  return SVN_NO_ERROR;
}