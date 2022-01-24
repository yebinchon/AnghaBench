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
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_4__ {int /*<<< orphan*/  full; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_1__ svn_authz_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(svn_authz_t **authz_p, svn_stream_t *stream,
                      svn_stream_t *groups_stream, apr_pool_t *pool)
{
  apr_pool_t *scratch_pool = FUNC3(pool);
  svn_authz_t *authz = FUNC1(pool, sizeof(*authz));
  authz->pool = pool;

  /* Parse the configuration and construct the full authz model from it. */
  FUNC0(FUNC2(&authz->full, stream, groups_stream, pool,
                           scratch_pool));

  FUNC4(scratch_pool);

  *authz_p = authz;
  return SVN_NO_ERROR;
}