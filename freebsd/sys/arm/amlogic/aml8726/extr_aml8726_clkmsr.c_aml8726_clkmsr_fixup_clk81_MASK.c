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
struct aml8726_clkmsr_softc {int /*<<< orphan*/  dev; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  prop ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  scalar_t__ pcell_t ;
typedef  int /*<<< orphan*/  freq ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,void*,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct aml8726_clkmsr_softc *sc, int freq)
{
	pcell_t prop;
	ssize_t len;
	phandle_t clk_node;
	phandle_t node;

	node = FUNC4(sc->dev);

	len = FUNC0(node, "clocks", &prop, sizeof(prop));
	if ((len / sizeof(prop)) != 1 || prop == 0 ||
	    (clk_node = FUNC1(prop)) == 0)
		return;

	len = FUNC0(clk_node, "clock-frequency", &prop, sizeof(prop));
	if ((len / sizeof(prop)) != 1 || prop != 0)
		return;

	freq = FUNC3(freq);

	FUNC2(clk_node, "clock-frequency", (void *)&freq, sizeof(freq));
}