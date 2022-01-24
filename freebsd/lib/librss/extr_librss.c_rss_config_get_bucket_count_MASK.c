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
struct rss_config {int rss_nbuckets; } ;

/* Variables and functions */

int
FUNC0(struct rss_config *rc)
{

	if (rc == NULL)
		return (-1);
	return (rc->rss_nbuckets);
}