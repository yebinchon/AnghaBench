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
struct evbuffer {struct evbuffer* orig_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*) ; 

void
FUNC1(struct evbuffer *buffer)
{
	if (buffer->orig_buffer != NULL)
		FUNC0(buffer->orig_buffer);
	FUNC0(buffer);
}