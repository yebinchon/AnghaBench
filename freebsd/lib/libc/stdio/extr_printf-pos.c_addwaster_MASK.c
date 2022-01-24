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
typedef  char wchar_t ;
typedef  int u_int ;
struct typetable {int nextarg; } ;

/* Variables and functions */
 int /*<<< orphan*/  T_INT ; 
 scalar_t__ FUNC0 (struct typetable*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char) ; 
 int FUNC2 (char) ; 

__attribute__((used)) static inline int
FUNC3(struct typetable *types, wchar_t **fmtp)
{
	wchar_t *cp;
	u_int n2;

	n2 = 0;
	cp = *fmtp;
	while (FUNC1(*cp)) {
		n2 = 10 * n2 + FUNC2(*cp);
		cp++;
	}
	if (*cp == '$') {
		u_int hold = types->nextarg;
		types->nextarg = n2;
		if (FUNC0(types, T_INT))
			return (-1);
		types->nextarg = hold;
		*fmtp = ++cp;
	} else {
		if (FUNC0(types, T_INT))
			return (-1);
	}
	return (0);
}