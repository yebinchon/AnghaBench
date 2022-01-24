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
 int KM_NOWAIT ; 
 int KM_SCRATCH ; 
 void* MAP_FAILED ; 
 void* FUNC0 (size_t,int) ; 

void *
FUNC1(size_t size)
{
	void *buf = FUNC0(size, KM_NOWAIT|KM_SCRATCH);

	if (buf == NULL)
		return (MAP_FAILED);

	return (buf);
}