#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  serf_bucket_t ;
struct TYPE_2__ {scalar_t__ relpath; scalar_t__ commit_ctx; int /*<<< orphan*/  base_revision; } ;
typedef  TYPE_1__ proppatch_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_DAV_VERSION_NAME_HEADER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC5(serf_bucket_t *headers,
                        void *baton,
                        apr_pool_t *pool /* request pool */,
                        apr_pool_t *scratch_pool)
{
  proppatch_context_t *proppatch = baton;

  if (FUNC1(proppatch->base_revision))
    {
      FUNC4(headers, SVN_DAV_VERSION_NAME_HEADER,
                              FUNC2(pool, "%ld",
                                           proppatch->base_revision));
    }

  if (proppatch->relpath && proppatch->commit_ctx)
    FUNC0(FUNC3(headers, proppatch->commit_ctx,
                                        proppatch->relpath, pool));

  return SVN_NO_ERROR;
}