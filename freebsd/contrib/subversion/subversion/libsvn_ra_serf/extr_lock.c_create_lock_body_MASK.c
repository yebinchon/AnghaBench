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
typedef  int /*<<< orphan*/  serf_bucket_t ;
typedef  int /*<<< orphan*/  serf_bucket_alloc_t ;
struct TYPE_4__ {TYPE_1__* lock; } ;
typedef  TYPE_2__ lock_ctx_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_3__ {scalar_t__ comment; } ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(serf_bucket_t **body_bkt,
                 void *baton,
                 serf_bucket_alloc_t *alloc,
                 apr_pool_t *pool /* request pool */,
                 apr_pool_t *scratch_pool)
{
  lock_ctx_t *ctx = baton;
  serf_bucket_t *buckets;

  buckets = FUNC0(alloc);

  FUNC5(buckets, alloc);
  FUNC3(buckets, alloc, "lockinfo",
                                    "xmlns", "DAV:",
                                    SVN_VA_NULL);

  FUNC3(buckets, alloc, "lockscope", SVN_VA_NULL);
  FUNC2(buckets, alloc, "exclusive", SVN_VA_NULL);
  FUNC1(buckets, alloc, "lockscope");

  FUNC3(buckets, alloc, "locktype", SVN_VA_NULL);
  FUNC2(buckets, alloc, "write", SVN_VA_NULL);
  FUNC1(buckets, alloc, "locktype");

  if (ctx->lock->comment)
    {
      FUNC4(buckets, "owner", ctx->lock->comment,
                                   alloc);
    }

  FUNC1(buckets, alloc, "lockinfo");

  *body_bkt = buckets;
  return SVN_NO_ERROR;
}