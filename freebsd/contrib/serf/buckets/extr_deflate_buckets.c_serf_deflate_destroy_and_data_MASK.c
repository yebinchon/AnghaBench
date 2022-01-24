#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* data; } ;
typedef  TYPE_1__ serf_bucket_t ;
struct TYPE_6__ {scalar_t__ state; scalar_t__ stream; scalar_t__ inflate_stream; int /*<<< orphan*/  zstream; } ;
typedef  TYPE_2__ deflate_context_t ;

/* Variables and functions */
 scalar_t__ STATE_FINISH ; 
 scalar_t__ STATE_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(serf_bucket_t *bucket)
{
    deflate_context_t *ctx = bucket->data;

    if (ctx->state > STATE_INIT &&
        ctx->state <= STATE_FINISH)
        FUNC0(&ctx->zstream);

    /* We may have appended inflate_stream into the stream bucket.
     * If so, avoid free'ing it twice.
     */
    if (ctx->inflate_stream) {
        FUNC1(ctx->inflate_stream);
    }
    FUNC1(ctx->stream);

    FUNC2(bucket);
}