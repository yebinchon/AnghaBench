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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 char FUNC4 (int) ; 
 char FUNC5 (int) ; 

__attribute__((used)) static char			/* if no counterpart, return ch */
FUNC6(int ch)
{
	FUNC0(FUNC1(ch));
	if (FUNC3(ch))
		return(FUNC4(ch));
	else if (FUNC2(ch))
		return(FUNC5(ch));
	else			/* peculiar, but could happen */
		return(ch);
}