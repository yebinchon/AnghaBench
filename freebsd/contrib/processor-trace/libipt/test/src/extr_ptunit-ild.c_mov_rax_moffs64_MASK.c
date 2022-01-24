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
typedef  int uint8_t ;
struct ptunit_result {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ptem_64bit ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC1 () ; 

__attribute__((used)) static struct ptunit_result FUNC2(void)
{
	uint8_t insn[] = { 0x48, 0xa1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
			   0x00, 0x00 };

	FUNC0(insn, ptem_64bit);

	return FUNC1();
}