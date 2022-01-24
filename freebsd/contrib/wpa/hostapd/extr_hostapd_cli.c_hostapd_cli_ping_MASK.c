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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ctrl_conn ; 
 int /*<<< orphan*/  ctrl_ifname ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void (*) (void*,void*),int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ping_interval ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void *eloop_ctx, void *timeout_ctx)
{
	if (ctrl_conn && FUNC0(ctrl_conn, "PING", 0)) {
		FUNC5("Connection to hostapd lost - trying to reconnect\n");
		FUNC2();
	}
	if (!ctrl_conn && FUNC3(ctrl_ifname) == 0)
		FUNC5("Connection to hostapd re-established\n");
	if (ctrl_conn)
		FUNC4(ctrl_conn, 1, 0);
	FUNC1(ping_interval, 0, hostapd_cli_ping, NULL, NULL);
}