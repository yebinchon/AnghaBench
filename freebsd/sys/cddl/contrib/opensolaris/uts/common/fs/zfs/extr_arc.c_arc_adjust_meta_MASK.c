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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 scalar_t__ ARC_STRATEGY_META_ONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ zfs_arc_meta_strategy ; 

__attribute__((used)) static uint64_t
FUNC2(uint64_t meta_used)
{
	if (zfs_arc_meta_strategy == ARC_STRATEGY_META_ONLY)
		return (FUNC1(meta_used));
	else
		return (FUNC0(meta_used));
}