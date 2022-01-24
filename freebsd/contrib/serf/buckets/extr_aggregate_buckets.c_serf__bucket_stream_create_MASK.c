#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* data; } ;
typedef  TYPE_1__ serf_bucket_t ;
typedef  int /*<<< orphan*/  serf_bucket_alloc_t ;
typedef  int /*<<< orphan*/  serf_bucket_aggregate_eof_t ;
struct TYPE_7__ {scalar_t__ bucket_owner; } ;
typedef  TYPE_2__ aggregate_context_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 

serf_bucket_t *FUNC2(
    serf_bucket_alloc_t *allocator,
    serf_bucket_aggregate_eof_t fn,
    void *baton)
{
    serf_bucket_t *bucket = FUNC0(allocator);
    aggregate_context_t *ctx = bucket->data;

    FUNC1(bucket, fn, baton);

    ctx->bucket_owner = 0;

    return bucket;
}