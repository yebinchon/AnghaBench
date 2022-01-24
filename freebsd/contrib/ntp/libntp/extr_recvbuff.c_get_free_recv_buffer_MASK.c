#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  used; } ;
typedef  TYPE_1__ recvbuf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  buffer_shortfall ; 
 int /*<<< orphan*/  free_recv_list ; 
 int /*<<< orphan*/  free_recvbufs ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  link ; 

recvbuf_t *
FUNC4(void)
{
	recvbuf_t *buffer;

	FUNC0();
	FUNC1(buffer, free_recv_list, link);
	if (buffer != NULL) {
		free_recvbufs--;
		FUNC3(buffer);
		buffer->used++;
	} else {
		buffer_shortfall++;
	}
	FUNC2();

	return buffer;
}