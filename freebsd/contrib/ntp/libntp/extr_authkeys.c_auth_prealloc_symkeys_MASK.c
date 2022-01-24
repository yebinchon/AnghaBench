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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int authnumfreekeys ; 
 int authnumkeys ; 

void
FUNC2(
	int	keycount
	)
{
	int	allocated;
	int	additional;

	allocated = authnumkeys + authnumfreekeys;
	additional = keycount - allocated;
	if (additional > 0)
		FUNC0(additional);
	FUNC1();
}