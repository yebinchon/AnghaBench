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
struct TYPE_3__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC2(svn_wc_context_t *wc_ctx,
                   const char *local_abspath,
                   const char *url,
                   const char *repos_root_url,
                   const char *repos_uuid,
                   svn_revnum_t revision,
                   svn_depth_t depth,
                   apr_pool_t *scratch_pool)
{
  return FUNC0(
    FUNC1(wc_ctx->db, local_abspath, url, repos_root_url,
                                repos_uuid, revision, depth, scratch_pool));
}