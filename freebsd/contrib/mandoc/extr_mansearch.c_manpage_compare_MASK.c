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
struct manpage {int bits; int sec; scalar_t__ names; } ;

/* Variables and functions */
 int FUNC0 (char const*,char const*) ; 
 char* FUNC1 (scalar_t__,char) ; 
 size_t FUNC2 (scalar_t__,char*) ; 
 int FUNC3 (scalar_t__,scalar_t__,size_t) ; 

__attribute__((used)) static int
FUNC4(const void *vp1, const void *vp2)
{
	const struct manpage	*mp1, *mp2;
	const char		*cp1, *cp2;
	size_t			 sz1, sz2;
	int			 diff;

	mp1 = vp1;
	mp2 = vp2;
	if ((diff = mp2->bits - mp1->bits) ||
	    (diff = mp1->sec - mp2->sec))
		return diff;

	/* Fall back to alphabetic ordering of names. */
	sz1 = FUNC2(mp1->names, "(");
	sz2 = FUNC2(mp2->names, "(");
	if (sz1 < sz2)
		sz1 = sz2;
	if ((diff = FUNC3(mp1->names, mp2->names, sz1)))
		return diff;

	/* For identical names and sections, prefer arch-dependent. */
	cp1 = FUNC1(mp1->names + sz1, '/');
	cp2 = FUNC1(mp2->names + sz2, '/');
	return cp1 != NULL && cp2 != NULL ? FUNC0(cp1, cp2) :
	    cp1 != NULL ? -1 : cp2 != NULL ? 1 : 0;
}