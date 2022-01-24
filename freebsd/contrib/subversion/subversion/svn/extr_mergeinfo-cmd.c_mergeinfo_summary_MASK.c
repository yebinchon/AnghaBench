#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_6__ {scalar_t__ kind; } ;
typedef  TYPE_1__ svn_opt_revision_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int*,char const**,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,char const**,char const*,TYPE_1__ const*,char const*,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_opt_revision_base ; 
 scalar_t__ svn_opt_revision_unspecified ; 
 scalar_t__ svn_opt_revision_working ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC4(
                  const char *source_path_or_url,
                  const svn_opt_revision_t *source_revision,
                  const char *target_path_or_url,
                  const svn_opt_revision_t *target_revision,
                  svn_client_ctx_t *ctx,
                  apr_pool_t *pool)
{
  const char *yca_url, *base_url, *right_url, *target_url;
  svn_revnum_t yca_rev, base_rev, right_rev, target_rev;
  const char *repos_root_url;
  svn_boolean_t target_is_wc, is_reintegration;

  target_is_wc = (! FUNC3(target_path_or_url))
                 && (target_revision->kind == svn_opt_revision_unspecified
                     || target_revision->kind == svn_opt_revision_working
                     || target_revision->kind == svn_opt_revision_base);
  FUNC0(FUNC2(
            &is_reintegration,
            &yca_url, &yca_rev,
            &base_url, &base_rev,
            &right_url, &right_rev,
            &target_url, &target_rev,
            &repos_root_url,
            source_path_or_url, source_revision,
            target_path_or_url, target_revision,
            ctx, pool, pool));

  FUNC0(FUNC1(yca_url, base_url, right_url, target_url,
                            yca_rev, base_rev, right_rev, target_rev,
                            repos_root_url, target_is_wc, is_reintegration,
                            pool));

  return SVN_NO_ERROR;
}