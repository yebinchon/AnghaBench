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
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_option_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  resolve_postpone ; 
 int /*<<< orphan*/  svn_client_conflict_option_postpone ; 

svn_error_t *
FUNC19(apr_array_header_t **options,
                                                svn_client_conflict_t *conflict,
                                                svn_client_ctx_t *ctx,
                                                apr_pool_t *result_pool,
                                                apr_pool_t *scratch_pool)
{
  FUNC0(FUNC4(conflict, scratch_pool));

  *options = FUNC3(result_pool, 2,
                            sizeof(svn_client_conflict_option_t *));

  /* Add postpone option. */
  FUNC2(*options, conflict,
                        svn_client_conflict_option_postpone,
                        FUNC1("Postpone"),
                        FUNC1("skip this conflict and leave it unresolved"),
                        resolve_postpone);

  /* Add an option which marks the conflict resolved. */
  FUNC0(FUNC5(conflict, *options));

  /* Configure options which offer automatic resolution. */
  FUNC0(FUNC17(conflict, *options));
  FUNC0(FUNC18(conflict,
                                                            *options));
  FUNC0(FUNC6(conflict, ctx, *options,
                                               scratch_pool));
  FUNC0(FUNC11(conflict, ctx,
                                                          *options,
                                                          scratch_pool));
  FUNC0(FUNC10(conflict,
                                                                 ctx,
                                                                 *options,
                                                                 scratch_pool));
  FUNC0(FUNC7(conflict, ctx,
                                                    *options,
                                                    scratch_pool));
  FUNC0(FUNC8(conflict, ctx,
                                                      *options,
                                                      scratch_pool));
  FUNC0(FUNC9(conflict,
                                                                ctx,
                                                                *options,
                                                                scratch_pool));
  FUNC0(FUNC13(conflict, ctx, *options,
                                                  scratch_pool));
  FUNC0(FUNC12(conflict, ctx, *options,
                                                  scratch_pool));
  FUNC0(FUNC15(conflict, ctx, *options,
                                                    scratch_pool));
  FUNC0(FUNC14(conflict, ctx, *options,
                                              scratch_pool));
  FUNC0(FUNC16(conflict, ctx, *options,
                                                 scratch_pool));

  return SVN_NO_ERROR;
}