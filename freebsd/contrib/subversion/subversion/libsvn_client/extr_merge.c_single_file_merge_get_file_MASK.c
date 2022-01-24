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
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {int /*<<< orphan*/  rev; int /*<<< orphan*/  url; } ;
typedef  TYPE_1__ svn_client__pathrev_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_io_file_del_on_pool_cleanup ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(const char **filename,
                           apr_hash_t **props,
                           svn_ra_session_t *ra_session,
                           const svn_client__pathrev_t *location,
                           const char *wc_target,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  svn_stream_t *stream;
  const char *old_sess_url;
  svn_error_t *err;

  FUNC0(FUNC7(&stream, filename, NULL,
                                 svn_io_file_del_on_pool_cleanup,
                                 result_pool, scratch_pool));

  FUNC0(FUNC1(&old_sess_url, ra_session, location->url,
                                            scratch_pool));
  err = FUNC4(ra_session, "", location->rev,
                        stream, NULL, props, scratch_pool);
  FUNC0(FUNC2(
            err, FUNC5(ra_session, old_sess_url, scratch_pool)));

  return FUNC3(FUNC6(stream));
}