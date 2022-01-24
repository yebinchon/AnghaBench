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
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int NOCLOBBER_ASK ; 
 int NOCLOBBER_DEFAULT ; 
 int NOCLOBBER_NOTEMPTY ; 
 int /*<<< orphan*/  STRRparen ; 
 int /*<<< orphan*/  STRask ; 
 int /*<<< orphan*/  STRnotempty ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(Char **val)
{
    Char *option;
    int nc = NOCLOBBER_DEFAULT;

    if (val == NULL)
	return nc;
    while (*val) {
	if (*val == 0 || FUNC0(*val, STRRparen))
	    return nc;

	option = *val++;

	if (FUNC0(option, STRnotempty))
	    nc |= NOCLOBBER_NOTEMPTY;
	else if (FUNC0(option, STRask))
	    nc |= NOCLOBBER_ASK;
    }
    return nc;
}