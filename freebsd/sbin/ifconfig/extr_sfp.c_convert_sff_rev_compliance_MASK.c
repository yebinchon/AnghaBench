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

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rev_compl ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,char const*) ; 

__attribute__((used)) static void
FUNC2(char *buf, size_t size, uint8_t value)
{
	const char *x;

	if (value > 0x07)
		x = "Unallocated";
	else
		x = FUNC0(rev_compl, value);

	FUNC1(buf, size, "%s", x);
}