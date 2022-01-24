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
 int /*<<< orphan*/  HOSTAPD_CLEANUP_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void (*) (void*,void*),struct hapd_interfaces*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hapd_interfaces*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hostapd_periodic_call ; 

__attribute__((used)) static void FUNC2(void *eloop_ctx, void *timeout_ctx)
{
	struct hapd_interfaces *interfaces = eloop_ctx;

	FUNC0(HOSTAPD_CLEANUP_INTERVAL, 0,
			       hostapd_periodic, interfaces, NULL);
	FUNC1(interfaces, hostapd_periodic_call, NULL);
}