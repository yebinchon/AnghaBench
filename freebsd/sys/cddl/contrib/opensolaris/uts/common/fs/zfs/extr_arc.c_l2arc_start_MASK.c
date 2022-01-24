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

/* Variables and functions */
 int FWRITE ; 
 int /*<<< orphan*/  TS_RUN ; 
 int /*<<< orphan*/  l2arc_feed_thread ; 
 int /*<<< orphan*/  minclsyspri ; 
 int /*<<< orphan*/  p0 ; 
 int spa_mode_global ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC1(void)
{
	if (!(spa_mode_global & FWRITE))
		return;

	(void) FUNC0(NULL, 0, l2arc_feed_thread, NULL, 0, &p0,
	    TS_RUN, minclsyspri);
}