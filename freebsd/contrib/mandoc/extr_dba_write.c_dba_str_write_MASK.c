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

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ofp ; 

void
FUNC3(const char *str)
{
	if (FUNC2(str, ofp) == EOF)
		FUNC1(1, "fputs");
	FUNC0('\0');
}