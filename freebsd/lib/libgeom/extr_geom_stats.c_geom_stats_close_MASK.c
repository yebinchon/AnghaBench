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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int npages ; 
 int pagesize ; 
 int /*<<< orphan*/ * statp ; 
 int statsfd ; 

void
FUNC2(void)
{
	if (statsfd == -1)
		return;
	FUNC1(statp, npages *pagesize);
	statp = NULL;
	FUNC0 (statsfd);
	statsfd = -1;
}