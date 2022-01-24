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
struct ti_pinmux_padconf {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 struct ti_pinmux_padconf* FUNC0 (char const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ti_pinmux_padconf const*,char const*,unsigned int) ; 
 int /*<<< orphan*/  ti_pinmux_sc ; 

int
FUNC2(const char *padname, const char *muxmode, unsigned int state)
{
	const struct ti_pinmux_padconf *padconf;

	if (!ti_pinmux_sc)
		return (ENXIO);

	/* find the pin in the devmap */
	padconf = FUNC0(padname);
	if (padconf == NULL)
		return (EINVAL);

	return (FUNC1(ti_pinmux_sc, padconf, muxmode, state));
}