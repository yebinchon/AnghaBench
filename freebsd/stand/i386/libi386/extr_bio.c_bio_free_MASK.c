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
 void* bio_buffer_ptr ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

void
FUNC1(void *ptr, size_t size)
{

	if (ptr == NULL)
		return;

	bio_buffer_ptr -= size;
	if (bio_buffer_ptr != ptr)
		FUNC0("bio_alloc()/bio_free() mismatch\n");
}