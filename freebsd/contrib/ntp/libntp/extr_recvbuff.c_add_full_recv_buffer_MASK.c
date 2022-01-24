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
typedef  int /*<<< orphan*/  recvbuf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  full_recv_fifo ; 
 int /*<<< orphan*/  full_recvbufs ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

void
FUNC4(recvbuf_t *rb)
{
	if (rb == NULL) {
		FUNC3(LOG_ERR, "add_full_recv_buffer received NULL buffer");
		return;
	}
	FUNC1();
	FUNC0(full_recv_fifo, rb, link);
	full_recvbufs++;
	FUNC2();
}