#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  allocator; TYPE_3__* data; } ;
typedef  TYPE_2__ serf_bucket_t ;
struct TYPE_6__ {scalar_t__ reason; } ;
struct TYPE_8__ {scalar_t__ state; int /*<<< orphan*/ * headers; int /*<<< orphan*/ * body; int /*<<< orphan*/ * stream; TYPE_1__ sl; } ;
typedef  TYPE_3__ response_context_t ;

/* Variables and functions */
 scalar_t__ STATE_STATUS_LINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(serf_bucket_t *bucket)
{
    response_context_t *ctx = bucket->data;

    if (ctx->state != STATE_STATUS_LINE) {
        FUNC1(bucket->allocator, (void*)ctx->sl.reason);
    }

    FUNC0(ctx->stream);
    if (ctx->body != NULL)
        FUNC0(ctx->body);
    FUNC0(ctx->headers);

    FUNC2(bucket);
}