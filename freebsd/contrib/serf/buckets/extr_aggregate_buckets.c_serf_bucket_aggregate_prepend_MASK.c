#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  allocator; TYPE_3__* data; } ;
typedef  TYPE_1__ serf_bucket_t ;
struct TYPE_8__ {struct TYPE_8__* next; TYPE_1__* bucket; } ;
typedef  TYPE_2__ bucket_list_t ;
struct TYPE_9__ {TYPE_2__* list; } ;
typedef  TYPE_3__ aggregate_context_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,int) ; 

void FUNC1(
    serf_bucket_t *aggregate_bucket,
    serf_bucket_t *prepend_bucket)
{
    aggregate_context_t *ctx = aggregate_bucket->data;
    bucket_list_t *new_list;

    new_list = FUNC0(aggregate_bucket->allocator,
                                     sizeof(*new_list));
    new_list->bucket = prepend_bucket;
    new_list->next = ctx->list;

    ctx->list = new_list;
}