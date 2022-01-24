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
struct iovec {int dummy; } ;
typedef  int /*<<< orphan*/  serf_bucket_t ;
typedef  int /*<<< orphan*/  apr_status_t ;
typedef  int /*<<< orphan*/  apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct iovec*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static apr_status_t FUNC2(serf_bucket_t *bucket,
                                               apr_size_t requested,
                                               int vecs_size,
                                               struct iovec *vecs,
                                               int *vecs_used)
{
    /* Seralize our private data into a new aggregate bucket. */
    FUNC1(bucket);

    /* Delegate to the "new" aggregate bucket to do the read. */
    return FUNC0(bucket, requested,
                                  vecs_size, vecs, vecs_used);
}