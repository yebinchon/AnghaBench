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
typedef  int mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  optarg ; 
 int FUNC1 (int /*<<< orphan*/ ,char**,int) ; 

mode_t
FUNC2(char *s)
{
	int done, rv;
	char *ep;

	done = 0;
	rv = -1;
	if (*s >= '0' && *s <= '7') {
		done = 1;
		rv = FUNC1(optarg, &ep, 8);
	}
	if (!done || rv < 0 || *ep)
		FUNC0(EX_USAGE, "invalid file mode: %s", s);
	return (rv);
}