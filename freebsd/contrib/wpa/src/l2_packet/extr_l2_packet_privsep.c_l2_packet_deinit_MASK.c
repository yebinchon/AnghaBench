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
struct l2_packet_data {scalar_t__ fd; struct l2_packet_data* own_socket_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRIVSEP_CMD_L2_UNREGISTER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct l2_packet_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct l2_packet_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct l2_packet_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(struct l2_packet_data *l2)
{
	if (l2 == NULL)
		return;

	if (l2->fd >= 0) {
		FUNC4(l2, PRIVSEP_CMD_L2_UNREGISTER, NULL, 0);
		FUNC1(l2->fd);
		FUNC0(l2->fd);
	}

	if (l2->own_socket_path) {
		FUNC3(l2->own_socket_path);
		FUNC2(l2->own_socket_path);
	}

	FUNC2(l2);
}