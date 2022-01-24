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
struct hostapd_data {int /*<<< orphan*/ * sock_ndisc; } ;

/* Variables and functions */
 int /*<<< orphan*/  L2_PACKET_FILTER_NDISC ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  handle_ndisc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct hostapd_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct hostapd_data *hapd)
{
	hapd->sock_ndisc = FUNC2(hapd, handle_ndisc,
						 L2_PACKET_FILTER_NDISC);
	if (hapd->sock_ndisc == NULL) {
		FUNC1(MSG_DEBUG,
			   "ndisc_snoop: Failed to initialize L2 packet processing for NDISC packets: %s",
			   FUNC0(errno));
		return -1;
	}

	return 0;
}