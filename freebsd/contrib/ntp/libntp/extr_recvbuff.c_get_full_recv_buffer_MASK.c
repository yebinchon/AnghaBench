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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  RECV_INC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ buffer_shortfall ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * free_recv_list ; 
 int /*<<< orphan*/  full_recv_fifo ; 
 int /*<<< orphan*/  full_recvbufs ; 
 int /*<<< orphan*/  link ; 

recvbuf_t *
FUNC4(void)
{
	recvbuf_t *	rbuf;

	FUNC0();
	
#ifdef HAVE_SIGNALED_IO
	/*
	 * make sure there are free buffers when we
	 * wander off to do lengthy packet processing with
	 * any buffer we grab from the full list.
	 * 
	 * fixes malloc() interrupted by SIGIO risk
	 * (Bug 889)
	 */
	if (NULL == free_recv_list || buffer_shortfall > 0) {
		/*
		 * try to get us some more buffers
		 */
		create_buffers(RECV_INC);
	}
#endif

	/*
	 * try to grab a full buffer
	 */
	FUNC1(rbuf, full_recv_fifo, link);
	if (rbuf != NULL)
		full_recvbufs--;
	FUNC2();

	return rbuf;
}