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
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,char const***) ; 

__attribute__((used)) static const char **
FUNC1(phandle_t node, int *pins_nb)
{
	const char **pinlist;

	*pins_nb = FUNC0(node, "pins", &pinlist);
	if (*pins_nb > 0)
		return (pinlist);

	*pins_nb = FUNC0(node, "allwinner,pins",
	    &pinlist);
	if (*pins_nb > 0)
		return (pinlist);

	return (NULL);
}