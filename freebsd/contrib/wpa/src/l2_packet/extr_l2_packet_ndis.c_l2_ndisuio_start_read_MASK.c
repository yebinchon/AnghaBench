#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  hEvent; } ;
struct l2_packet_data {TYPE_1__ rx_overlapped; int /*<<< orphan*/  rx_written; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  rx_avail; } ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_IO_PENDING ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct l2_packet_data*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC6(struct l2_packet_data *l2, int recursive)
{
	FUNC4(&l2->rx_overlapped, 0, sizeof(l2->rx_overlapped));
	l2->rx_overlapped.hEvent = l2->rx_avail;
	if (!FUNC1(FUNC2(), l2->rx_buf,
		      sizeof(l2->rx_buf), &l2->rx_written, &l2->rx_overlapped))
	{
		DWORD err = FUNC0();
		if (err != ERROR_IO_PENDING) {
			FUNC5(MSG_DEBUG, "L2(NDISUIO): ReadFile failed: "
				   "%d", (int) err);
			return -1;
		}
		/*
		 * Once read is completed, l2_packet_rx_event() will be
		 * called.
		 */
	} else {
		FUNC5(MSG_DEBUG, "L2(NDISUIO): ReadFile returned data "
			   "without wait for completion");
		if (!recursive)
			FUNC3(l2);
	}

	return 0;
}