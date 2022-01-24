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
 int /*<<< orphan*/  PORTRANGE_FIRST ; 
 int /*<<< orphan*/  PORTRANGE_LAST ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int portrange_first ; 
 int portrange_last ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 

__attribute__((used)) static int
FUNC4(int seed)
{
	int random_port;

	FUNC1("Generating a random port with seed=%d\n", seed);
	if (portrange_first == 0) {
		portrange_first = FUNC0(PORTRANGE_FIRST);
		FUNC1("Port range lower bound: %d\n", portrange_first);
	}

	if (portrange_last == 0) {
		portrange_last = FUNC0(PORTRANGE_LAST);
		FUNC1("Port range upper bound: %d\n", portrange_last);
	}

	FUNC3((unsigned)seed);

	random_port = FUNC2() % (portrange_last - portrange_first) +
	    portrange_first;

	FUNC1("Random port generated: %d\n", random_port);
	return (random_port);
}