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
struct bgscan_learn_bss {struct bgscan_learn_bss* neigh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bgscan_learn_bss*) ; 

__attribute__((used)) static void FUNC1(struct bgscan_learn_bss *bss)
{
	FUNC0(bss->neigh);
	FUNC0(bss);
}