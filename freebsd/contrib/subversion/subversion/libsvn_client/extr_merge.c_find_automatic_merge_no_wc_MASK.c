#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_opt_revision_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_client__pathrev_t ;
struct TYPE_7__ {int /*<<< orphan*/  yca; TYPE_1__* target; int /*<<< orphan*/ * source; int /*<<< orphan*/  target_ra_session; int /*<<< orphan*/  source_ra_session; } ;
typedef  TYPE_2__ source_and_target_t ;
struct TYPE_8__ {int /*<<< orphan*/  yca; int /*<<< orphan*/ * target; int /*<<< orphan*/ * right; int /*<<< orphan*/  is_reintegrate_like; int /*<<< orphan*/  base; } ;
typedef  TYPE_3__ automatic_merge_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_6__ {int /*<<< orphan*/  loc; int /*<<< orphan*/ * abspath; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(automatic_merge_t **merge_p,
                           const char *source_path_or_url,
                           const svn_opt_revision_t *source_revision,
                           const char *target_path_or_url,
                           const svn_opt_revision_t *target_revision,
                           svn_client_ctx_t *ctx,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  source_and_target_t *s_t = FUNC1(scratch_pool, sizeof(*s_t));
  svn_client__pathrev_t *target_loc;
  automatic_merge_t *merge = FUNC1(result_pool, sizeof(*merge));

  /* Source */
  FUNC0(FUNC3(
            &s_t->source_ra_session, &s_t->source,
            source_path_or_url, NULL, source_revision, source_revision,
            ctx, result_pool));

  /* Target */
  FUNC0(FUNC3(
            &s_t->target_ra_session, &target_loc,
            target_path_or_url, NULL, target_revision, target_revision,
            ctx, result_pool));
  s_t->target = FUNC1(scratch_pool, sizeof(*s_t->target));
  s_t->target->abspath = NULL;  /* indicate the target is not a WC */
  s_t->target->loc = *target_loc;

  FUNC0(FUNC2(&merge->base, &merge->is_reintegrate_like, s_t,
                               ctx, result_pool, scratch_pool));

  merge->right = s_t->source;
  merge->target = &s_t->target->loc;
  merge->yca = s_t->yca;
  *merge_p = merge;

  return SVN_NO_ERROR;
}