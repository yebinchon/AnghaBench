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
typedef  int /*<<< orphan*/  serf_bucket_t ;
typedef  int /*<<< orphan*/  serf_bucket_alloc_t ;
struct TYPE_4__ {int /*<<< orphan*/  linebuf; scalar_t__ head_req; scalar_t__ chunked; int /*<<< orphan*/  state; int /*<<< orphan*/  headers; int /*<<< orphan*/ * body; int /*<<< orphan*/ * stream; } ;
typedef  TYPE_1__ response_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  STATE_STATUS_LINE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  serf_bucket_type_response ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

serf_bucket_t *FUNC4(
    serf_bucket_t *stream,
    serf_bucket_alloc_t *allocator)
{
    response_context_t *ctx;

    ctx = FUNC2(allocator, sizeof(*ctx));
    ctx->stream = stream;
    ctx->body = NULL;
    ctx->headers = FUNC1(allocator);
    ctx->state = STATE_STATUS_LINE;
    ctx->chunked = 0;
    ctx->head_req = 0;

    FUNC3(&ctx->linebuf);

    return FUNC0(&serf_bucket_type_response, allocator, ctx);
}