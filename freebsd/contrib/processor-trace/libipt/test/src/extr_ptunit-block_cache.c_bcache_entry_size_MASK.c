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
struct ptunit_result {int dummy; } ;
struct pt_bcache_entry {int dummy; } ;

/* Variables and functions */
 struct ptunit_result FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static struct ptunit_result FUNC2(void)
{
	FUNC1(sizeof(struct pt_bcache_entry), sizeof(uint32_t));

	return FUNC0();
}