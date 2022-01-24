#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  serf_request_t ;
typedef  int /*<<< orphan*/  serf_bucket_t ;
struct TYPE_4__ {int /*<<< orphan*/  inner_baton; int /*<<< orphan*/ * (* inner_handler ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;scalar_t__ read_headers; int /*<<< orphan*/  pool; TYPE_1__* lock; } ;
typedef  TYPE_2__ lock_info_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_3__ {int /*<<< orphan*/  creation_date; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_DAV_CREATIONDATE_HEADER ; 
 int /*<<< orphan*/  SVN_DAV_LOCK_OWNER_HEADER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC6(serf_request_t *request,
            serf_bucket_t *response,
            void *handler_baton,
            apr_pool_t *pool)
{
  lock_info_t *ctx = handler_baton;

  if (!ctx->read_headers)
    {
      serf_bucket_t *headers;
      const char *val;

      headers = FUNC3(response);

      val = FUNC2(headers, SVN_DAV_LOCK_OWNER_HEADER);
      if (val)
        {
          ctx->lock->owner = FUNC1(ctx->pool, val);
        }

      val = FUNC2(headers, SVN_DAV_CREATIONDATE_HEADER);
      if (val)
        {
          FUNC0(FUNC5(&ctx->lock->creation_date, val,
                                        ctx->pool));
        }

      ctx->read_headers = TRUE;
    }

  return ctx->inner_handler(request, response, ctx->inner_baton, pool);
}