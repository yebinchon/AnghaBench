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
struct TYPE_5__ {int /*<<< orphan*/  allocator; TYPE_2__* data; } ;
typedef  TYPE_1__ serf_bucket_t ;
struct TYPE_6__ {scalar_t__ state; int /*<<< orphan*/ * headers; int /*<<< orphan*/ * body; int /*<<< orphan*/ * stream; scalar_t__ phrase; } ;
typedef  TYPE_2__ incoming_context_t ;

/* Variables and functions */
 scalar_t__ STATE_STATUS_LINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(serf_bucket_t *bucket)
{
    incoming_context_t *ctx = bucket->data;

    if (ctx->state != STATE_STATUS_LINE && ctx->phrase) {
        FUNC1(bucket->allocator, (void*)ctx->phrase);
    }

    FUNC0(ctx->stream);
    if (ctx->body != NULL)
        FUNC0(ctx->body);
    FUNC0(ctx->headers);

    FUNC2(bucket);
}