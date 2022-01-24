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
typedef  int /*<<< orphan*/  serf_bucket_alloc_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC3(serf_bucket_t *agg_bucket,
                                   serf_bucket_alloc_t *bkt_alloc,
                                   const char *tag)
{
  serf_bucket_t *tmp;

  tmp = FUNC1("</", 2, bkt_alloc);
  FUNC2(agg_bucket, tmp);

  tmp = FUNC0(tag, bkt_alloc);
  FUNC2(agg_bucket, tmp);

  tmp = FUNC1(">", 1, bkt_alloc);
  FUNC2(agg_bucket, tmp);
}