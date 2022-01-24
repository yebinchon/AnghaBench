#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
struct TYPE_9__ {int /*<<< orphan*/  url; int /*<<< orphan*/  repos_root_url; } ;
typedef  TYPE_1__ svn_client__pathrev_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(svn_client__pathrev_t **ancestor_p,
                                         const svn_client__pathrev_t *loc1,
                                         const svn_client__pathrev_t *loc2,
                                         svn_ra_session_t *session,
                                         svn_client_ctx_t *ctx,
                                         apr_pool_t *result_pool,
                                         apr_pool_t *scratch_pool)
{
  apr_pool_t *sesspool = NULL;
  apr_hash_t *history1, *history2;
  svn_boolean_t has_rev_zero_history1;
  svn_boolean_t has_rev_zero_history2;

  if (FUNC1(loc1->repos_root_url, loc2->repos_root_url) != 0)
    {
      *ancestor_p = NULL;
      return SVN_NO_ERROR;
    }

  /* Open an RA session for the two locations. */
  if (session == NULL)
    {
      sesspool = FUNC5(scratch_pool);
      FUNC0(FUNC4(&session, loc1->url, NULL, ctx,
                                          sesspool, sesspool));
    }

  /* We're going to cheat and use history-as-mergeinfo because it
     saves us a bunch of annoying custom data comparisons and such. */
  FUNC0(FUNC3(&history1,
                                               &has_rev_zero_history1,
                                               loc1,
                                               SVN_INVALID_REVNUM,
                                               SVN_INVALID_REVNUM,
                                               session, ctx, scratch_pool));
  FUNC0(FUNC3(&history2,
                                               &has_rev_zero_history2,
                                               loc2,
                                               SVN_INVALID_REVNUM,
                                               SVN_INVALID_REVNUM,
                                               session, ctx, scratch_pool));
  /* Close the ra session if we opened one. */
  if (sesspool)
    FUNC6(sesspool);

  FUNC0(FUNC2(ancestor_p,
                                                    loc1, history1,
                                                    has_rev_zero_history1,
                                                    loc2, history2,
                                                    has_rev_zero_history2,
                                                    result_pool,
                                                    scratch_pool));

  return SVN_NO_ERROR;
}