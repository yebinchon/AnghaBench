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
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_location_segment_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
struct gls_receiver_baton_t {int /*<<< orphan*/ * pool; int /*<<< orphan*/ * ctx; int /*<<< orphan*/ * segments; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  compare_segments ; 
 int /*<<< orphan*/  gls_receiver ; 
 int /*<<< orphan*/  FUNC2 (char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gls_receiver_baton_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC7(apr_array_header_t **segments,
                                    svn_ra_session_t *ra_session,
                                    const char *url,
                                    svn_revnum_t peg_revision,
                                    svn_revnum_t start_revision,
                                    svn_revnum_t end_revision,
                                    svn_client_ctx_t *ctx,
                                    apr_pool_t *pool)
{
  struct gls_receiver_baton_t gls_receiver_baton;
  const char *old_session_url;
  svn_error_t *err;

  *segments = FUNC1(pool, 8, sizeof(svn_location_segment_t *));
  gls_receiver_baton.segments = *segments;
  gls_receiver_baton.ctx = ctx;
  gls_receiver_baton.pool = pool;
  FUNC0(FUNC2(&old_session_url, ra_session,
                                            url, pool));
  err = FUNC4(ra_session, "", peg_revision,
                                     start_revision, end_revision,
                                     gls_receiver, &gls_receiver_baton,
                                     pool);
  FUNC0(FUNC3(
            err, FUNC5(ra_session, old_session_url, pool)));
  FUNC6(*segments, compare_segments);
  return SVN_NO_ERROR;
}