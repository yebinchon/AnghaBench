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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  prop ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  scalar_t__ pcell_t ;
typedef  int /*<<< orphan*/  freq ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,void*,int) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC6(void)
{
	phandle_t node;
	pcell_t freq, prop;
	ssize_t len;

	/*
	 * Set the bus-frequency for the SoC simple-bus if it
	 * needs updating (meaning the current frequency is zero).
	 */

	if ((freq = FUNC3()) == 0 ||
	    (node = FUNC0("/soc")) == 0 ||
	    FUNC5(node, "simple-bus") == 0)
		while (1);

	freq = FUNC4(freq);

	len = FUNC1(node, "bus-frequency", &prop, sizeof(prop));
	if ((len / sizeof(prop)) == 1 && prop == 0)
		FUNC2(node, "bus-frequency", (void *)&freq, sizeof(freq));
}