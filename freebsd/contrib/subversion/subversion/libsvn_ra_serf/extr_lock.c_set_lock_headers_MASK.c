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
struct TYPE_2__ {int /*<<< orphan*/  revision; scalar_t__ force; } ;
typedef  TYPE_1__ lock_ctx_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * APR_SUCCESS ; 
 int /*<<< orphan*/  SVN_DAV_OPTIONS_HEADER ; 
 int /*<<< orphan*/  SVN_DAV_OPTION_LOCK_STEAL ; 
 int /*<<< orphan*/  SVN_DAV_VERSION_NAME_HEADER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC3(serf_bucket_t *headers,
                 void *baton,
                 apr_pool_t *pool /* request pool */,
                 apr_pool_t *scratch_pool)
{
  lock_ctx_t *lock_ctx = baton;

  if (lock_ctx->force)
    {
      FUNC2(headers, SVN_DAV_OPTIONS_HEADER,
                              SVN_DAV_OPTION_LOCK_STEAL);
    }

  if (FUNC0(lock_ctx->revision))
    {
      FUNC2(headers, SVN_DAV_VERSION_NAME_HEADER,
                              FUNC1(pool, lock_ctx->revision));
    }

  return APR_SUCCESS;
}