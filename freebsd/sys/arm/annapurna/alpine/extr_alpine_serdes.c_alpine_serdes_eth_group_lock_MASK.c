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
typedef  size_t uint32_t ;
struct alpine_serdes_eth_group_mode {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct alpine_serdes_eth_group_mode* alpine_serdes_eth_group_mode ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(uint32_t group)
{
	struct alpine_serdes_eth_group_mode *group_mode;

	group_mode = &alpine_serdes_eth_group_mode[group];

	if (FUNC0(&group_mode->lock) == 0)
		return;

	FUNC1(&group_mode->lock);
}