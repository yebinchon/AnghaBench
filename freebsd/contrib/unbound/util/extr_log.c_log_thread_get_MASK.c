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
 int /*<<< orphan*/  key_created ; 
 int /*<<< orphan*/  logkey ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

int FUNC1(void)
{
	unsigned int* tid;
	if(!key_created) return 0;
	tid = (unsigned int*)FUNC0(logkey);
	return (int)(tid?*tid:0);
}