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
struct hostapd_iface {int /*<<< orphan*/  sta_seen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct hostapd_iface* FUNC1 (int) ; 

struct hostapd_iface * FUNC2(void)
{
	struct hostapd_iface *hapd_iface;

	hapd_iface = FUNC1(sizeof(*hapd_iface));
	if (!hapd_iface)
		return NULL;

	FUNC0(&hapd_iface->sta_seen);

	return hapd_iface;
}