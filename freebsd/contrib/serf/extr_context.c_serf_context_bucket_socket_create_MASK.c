#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  serf_context_t ;
typedef  int /*<<< orphan*/  serf_bucket_t ;
typedef  int /*<<< orphan*/  serf_bucket_alloc_t ;
typedef  int /*<<< orphan*/  apr_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  serf__context_progress_delta ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

serf_bucket_t *FUNC2(
    serf_context_t *ctx,
    apr_socket_t *skt,
    serf_bucket_alloc_t *allocator)
{
    serf_bucket_t *bucket = FUNC0(skt, allocator);

    /* Use serf's default bytes read/written callback */
    FUNC1(bucket,
                                            serf__context_progress_delta,
                                            ctx);

    return bucket;
}