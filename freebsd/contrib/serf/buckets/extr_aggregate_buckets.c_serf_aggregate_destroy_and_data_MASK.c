#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  allocator; TYPE_3__* data; } ;
typedef  TYPE_1__ serf_bucket_t ;
struct TYPE_9__ {struct TYPE_9__* next; int /*<<< orphan*/  bucket; } ;
typedef  TYPE_2__ bucket_list_t ;
struct TYPE_10__ {TYPE_2__* list; scalar_t__ bucket_owner; } ;
typedef  TYPE_3__ aggregate_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(serf_bucket_t *bucket)
{
    aggregate_context_t *ctx = bucket->data;
    bucket_list_t *next_ctx;

    while (ctx->list) {
        if (ctx->bucket_owner) {
            FUNC1(ctx->list->bucket);
        }
        next_ctx = ctx->list->next;
        FUNC2(bucket->allocator, ctx->list);
        ctx->list = next_ctx;
    }
    FUNC0(ctx, bucket->allocator);

    FUNC3(bucket);
}