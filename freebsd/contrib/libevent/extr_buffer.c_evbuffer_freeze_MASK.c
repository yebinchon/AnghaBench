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
struct evbuffer {int freeze_start; int freeze_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*) ; 

int
FUNC2(struct evbuffer *buffer, int start)
{
	FUNC0(buffer);
	if (start)
		buffer->freeze_start = 1;
	else
		buffer->freeze_end = 1;
	FUNC1(buffer);
	return 0;
}