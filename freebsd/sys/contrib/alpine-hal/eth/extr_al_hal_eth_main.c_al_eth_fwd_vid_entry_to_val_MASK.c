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
typedef  int /*<<< orphan*/  uint32_t ;
struct al_eth_fwd_vid_table_entry {int /*<<< orphan*/  udma_mask; int /*<<< orphan*/  filter; int /*<<< orphan*/  control; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t	FUNC3(struct al_eth_fwd_vid_table_entry *entry)
{
	uint32_t val = 0;
	FUNC1(val, 0, entry->control);
	FUNC1(val, 1, entry->filter);
	FUNC2(val, FUNC0(5,2), 2, entry->udma_mask);

	return val;
}