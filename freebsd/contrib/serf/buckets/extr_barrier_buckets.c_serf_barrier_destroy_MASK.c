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
typedef  int /*<<< orphan*/  serf_bucket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(serf_bucket_t *bucket)
{
    /* The intent of this bucket is not to let our wrapped buckets be
     * destroyed. */

    /* The option is for us to go ahead and 'eat' this bucket now,
     * or just ignore the deletion entirely.
     */
    FUNC0(bucket);
}