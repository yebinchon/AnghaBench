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
struct hostapd_config {size_t num_bss; TYPE_1__** bss; } ;
struct TYPE_2__ {int /*<<< orphan*/  iface; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct hostapd_config *newconf,
				      struct hostapd_config *oldconf)
{
	size_t i;

	if (newconf->num_bss != oldconf->num_bss)
		return 1;

	for (i = 0; i < newconf->num_bss; i++) {
		if (FUNC0(newconf->bss[i]->iface,
			      oldconf->bss[i]->iface) != 0)
			return 1;
	}

	return 0;
}