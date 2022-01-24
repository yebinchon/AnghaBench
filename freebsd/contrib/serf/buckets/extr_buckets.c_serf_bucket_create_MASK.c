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
typedef  int /*<<< orphan*/  serf_bucket_type_t ;
struct TYPE_4__ {int /*<<< orphan*/ * allocator; void* data; int /*<<< orphan*/  const* type; } ;
typedef  TYPE_1__ serf_bucket_t ;
typedef  int /*<<< orphan*/  serf_bucket_alloc_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 

serf_bucket_t *FUNC1(
    const serf_bucket_type_t *type,
    serf_bucket_alloc_t *allocator,
    void *data)
{
    serf_bucket_t *bkt = FUNC0(allocator, sizeof(*bkt));

    bkt->type = type;
    bkt->data = data;
    bkt->allocator = allocator;

    return bkt;
}