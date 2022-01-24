#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_opt_revision_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  void* svn_boolean_t ;
struct TYPE_7__ {TYPE_3__* target; int /*<<< orphan*/  source; int /*<<< orphan*/  yca; int /*<<< orphan*/  source_ra_session; int /*<<< orphan*/  target_ra_session; } ;
typedef  TYPE_1__ source_and_target_t ;
struct TYPE_8__ {void* allow_switched_subtrees; void* allow_local_mods; void* allow_mixed_rev; TYPE_6__* target; int /*<<< orphan*/  right; int /*<<< orphan*/  yca; int /*<<< orphan*/  is_reintegrate_like; int /*<<< orphan*/  base; } ;
typedef  TYPE_2__ automatic_merge_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_10__ {int /*<<< orphan*/  url; } ;
struct TYPE_9__ {TYPE_6__ loc; int /*<<< orphan*/  abspath; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_CLIENT_UNRELATED_RESOURCES ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,TYPE_6__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__**,char const*,void*,void*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC12(automatic_merge_t **merge_p,
                            const char *source_path_or_url,
                            const svn_opt_revision_t *source_revision,
                            const char *target_abspath,
                            svn_boolean_t allow_mixed_rev,
                            svn_boolean_t allow_local_mods,
                            svn_boolean_t allow_switched_subtrees,
                            svn_client_ctx_t *ctx,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  source_and_target_t *s_t = FUNC3(result_pool, sizeof(*s_t));
  automatic_merge_t *merge = FUNC3(result_pool, sizeof(*merge));

  FUNC1(FUNC9(target_abspath));

  /* "Open" the target WC.  Check the target WC for mixed-rev, local mods and
   * switched subtrees yet to faster exit and notify user before contacting
   * with server.  After we find out what kind of merge is required, then if a
   * reintegrate-like merge is required we'll do the stricter checks, in
   * do_automatic_merge_locked(). */
  FUNC0(FUNC6(&s_t->target, target_abspath,
                         allow_mixed_rev,
                         allow_local_mods,
                         allow_switched_subtrees,
                         ctx, result_pool, scratch_pool));

  if (!s_t->target->loc.url)
    return FUNC11(SVN_ERR_CLIENT_UNRELATED_RESOURCES, NULL,
                             FUNC2("Can't perform automatic merge into '%s' "
                               "because it is locally added and therefore "
                               "not related to the merge source"),
                             FUNC10(target_abspath,
                                                    scratch_pool));

  /* Open RA sessions to the source and target trees. */
  FUNC0(FUNC8(&s_t->target_ra_session,
                                      s_t->target->loc.url,
                                      s_t->target->abspath,
                                      ctx, result_pool, scratch_pool));
  FUNC0(FUNC7(
            &s_t->source_ra_session, &s_t->source,
            source_path_or_url, NULL, source_revision, source_revision,
            ctx, result_pool));

  /* Check source is in same repos as target. */
  FUNC0(FUNC4(s_t->source, source_path_or_url,
                           &s_t->target->loc, target_abspath,
                           TRUE /* strict_urls */, scratch_pool));

  FUNC0(FUNC5(&merge->base, &merge->is_reintegrate_like, s_t,
                               ctx, result_pool, scratch_pool));
  merge->yca = s_t->yca;
  merge->right = s_t->source;
  merge->target = &s_t->target->loc;
  merge->allow_mixed_rev = allow_mixed_rev;
  merge->allow_local_mods = allow_local_mods;
  merge->allow_switched_subtrees = allow_switched_subtrees;

  *merge_p = merge;

  /* TODO: Close the source and target sessions here? */

  return SVN_NO_ERROR;
}