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
struct iovec {char* iov_base; int /*<<< orphan*/  iov_len; } ;
struct TYPE_4__ {int /*<<< orphan*/  allocator; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ serf_bucket_t ;
typedef  int /*<<< orphan*/  apr_status_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  aggregate_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int,struct iovec*,int*) ; 

__attribute__((used)) static apr_status_t FUNC2(serf_bucket_t *bucket,
                                        apr_size_t requested,
                                        const char **data, apr_size_t *len)
{
    aggregate_context_t *ctx = bucket->data;
    struct iovec vec;
    int vecs_used;
    apr_status_t status;

    FUNC0(ctx, bucket->allocator);

    status = FUNC1(bucket, requested, 1, &vec, &vecs_used);

    if (!vecs_used) {
        *len = 0;
    }
    else {
        *data = vec.iov_base;
        *len = vec.iov_len;
    }

    return status;
}