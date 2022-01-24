#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  allocator; TYPE_3__* data; } ;
typedef  TYPE_2__ serf_bucket_t ;
struct TYPE_11__ {char* reason; int /*<<< orphan*/  code; int /*<<< orphan*/  version; } ;
struct TYPE_13__ {TYPE_2__* stream; TYPE_2__* headers; TYPE_1__ sl; } ;
typedef  TYPE_3__ response_context_t ;
typedef  int /*<<< orphan*/  apr_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SUCCESS ; 
 TYPE_2__* FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_2__* FUNC7 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*) ; 

apr_status_t FUNC9(serf_bucket_t *bucket)
{
    response_context_t *ctx = bucket->data;
    serf_bucket_t *bkt;
    char buf[256];
    int size;

    FUNC5(bucket);

    /* Add reconstructed status line. */
    size = FUNC3(buf, 256, "HTTP/%d.%d %d ",
                        FUNC1(ctx->sl.version),
                        FUNC2(ctx->sl.version),
                        ctx->sl.code);
    bkt = FUNC7(buf, size,
                                         bucket->allocator);
    FUNC4(bucket, bkt);
    bkt = FUNC7(ctx->sl.reason, FUNC8(ctx->sl.reason),
                                         bucket->allocator);
    FUNC4(bucket, bkt);
    bkt = FUNC0("\r\n", 2,
                                        bucket->allocator);
    FUNC4(bucket, bkt);

    /* Add headers and stream buckets in order. */
    FUNC4(bucket, ctx->headers);
    FUNC4(bucket, ctx->stream);

    FUNC6(bucket->allocator, ctx);

    return APR_SUCCESS;
}