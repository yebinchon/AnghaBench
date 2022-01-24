#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct l2_packet_data {int /*<<< orphan*/  rx_written; int /*<<< orphan*/  rx_overlapped; int /*<<< orphan*/  rx_avail; } ;
struct TYPE_2__ {int refcount; int /*<<< orphan*/  rx_processed; struct l2_packet_data** l2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* l2_ndisuio_global ; 
 int /*<<< orphan*/  FUNC5 (struct l2_packet_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC7(void *eloop_data, void *user_data)
{
	struct l2_packet_data *l2 = eloop_data;

	if (l2_ndisuio_global)
		l2 = l2_ndisuio_global->l2[l2_ndisuio_global->refcount - 1];

	FUNC2(l2->rx_avail);

#ifndef _WIN32_WCE
	if (!FUNC1(FUNC4(),
				 &l2->rx_overlapped, &l2->rx_written, FALSE)) {
		FUNC6(MSG_DEBUG, "L2(NDISUIO): GetOverlappedResult "
			   "failed: %d", (int) FUNC0());
		return;
	}
#endif /* _WIN32_WCE */

	FUNC5(l2);

#ifdef _WIN32_WCE
	SetEvent(l2_ndisuio_global->rx_processed);
#endif /* _WIN32_WCE */
}