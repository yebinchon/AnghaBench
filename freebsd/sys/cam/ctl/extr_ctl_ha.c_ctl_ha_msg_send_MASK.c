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
typedef  int /*<<< orphan*/  ctl_ha_status ;
typedef  int /*<<< orphan*/  ctl_ha_channel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

ctl_ha_status
FUNC1(ctl_ha_channel channel, const void *addr, size_t len,
    int wait)
{

	return (FUNC0(channel, addr, len, NULL, 0, wait));
}