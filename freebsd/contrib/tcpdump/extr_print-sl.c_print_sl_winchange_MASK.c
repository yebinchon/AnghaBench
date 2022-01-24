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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 short FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const u_char *
FUNC2(netdissect_options *ndo,
                   register const u_char *cp)
{
	register short i;

	if ((i = *cp++) == 0) {
		i = FUNC0(cp);
		cp += 2;
	}
	if (i >= 0)
		FUNC1((ndo, " W+%d", i));
	else
		FUNC1((ndo, " W%d", i));
	return (cp);
}