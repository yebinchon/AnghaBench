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
typedef  int /*<<< orphan*/  val ;

/* Variables and functions */
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int MSG_DONTWAIT ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  RDMA_INLINE ; 
 int /*<<< orphan*/  SOL_RDMA ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVBUF ; 
 int /*<<< orphan*/  SO_SNDBUF ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 scalar_t__ buffer_size ; 
 int flags ; 
 int inline_size ; 
 scalar_t__ keepalive ; 
 scalar_t__ opt_bandwidth ; 
 scalar_t__ opt_latency ; 
 scalar_t__ optimization ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ use_rs ; 

__attribute__((used)) static void FUNC3(int fd)
{
	int val;

	if (buffer_size) {
		FUNC1(fd, SOL_SOCKET, SO_SNDBUF, (void *) &buffer_size,
			      sizeof buffer_size);
		FUNC1(fd, SOL_SOCKET, SO_RCVBUF, (void *) &buffer_size,
			      sizeof buffer_size);
	} else {
		val = 1 << 19;
		FUNC1(fd, SOL_SOCKET, SO_SNDBUF, (void *) &val, sizeof val);
		FUNC1(fd, SOL_SOCKET, SO_RCVBUF, (void *) &val, sizeof val);
	}

	val = 1;
	FUNC1(fd, IPPROTO_TCP, TCP_NODELAY, (void *) &val, sizeof(val));

	if (flags & MSG_DONTWAIT)
		FUNC0(fd, F_SETFL, O_NONBLOCK);

	if (use_rs) {
		/* Inline size based on experimental data */
		if (optimization == opt_latency) {
			FUNC1(fd, SOL_RDMA, RDMA_INLINE, &inline_size,
				      sizeof inline_size);
		} else if (optimization == opt_bandwidth) {
			val = 0;
			FUNC1(fd, SOL_RDMA, RDMA_INLINE, &val, sizeof val);
		}
	}

	if (keepalive)
		FUNC2(fd);
}