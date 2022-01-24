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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t stream_wait_count ; 
 int /*<<< orphan*/  stream_wait_count_lock ; 
 int /*<<< orphan*/  stream_wait_lock_inited ; 

size_t FUNC2(void)
{
	size_t s;
	if(!stream_wait_lock_inited)
		return stream_wait_count;
	FUNC0(&stream_wait_count_lock);
	s = stream_wait_count;
	FUNC1(&stream_wait_count_lock);
	return s;
}