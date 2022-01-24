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
struct hapd_interfaces {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  handle_reload_iface ; 
 int /*<<< orphan*/  FUNC0 (struct hapd_interfaces*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC2(int sig, void *signal_ctx)
{
	struct hapd_interfaces *interfaces = signal_ctx;
	FUNC1(MSG_DEBUG, "Signal %d received - reloading configuration",
		   sig);
	FUNC0(interfaces, handle_reload_iface, NULL);
}