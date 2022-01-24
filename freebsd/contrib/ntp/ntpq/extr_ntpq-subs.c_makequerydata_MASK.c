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
struct varlist {scalar_t__ name; scalar_t__ value; } ;

/* Variables and functions */
 int MAXLIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC2 (scalar_t__) ; 

__attribute__((used)) static void
FUNC3(
	struct varlist *vlist,
	size_t *datalen,
	char *data
	)
{
	register struct varlist *vl;
	register char *cp, *cpend;
	register size_t namelen, valuelen;
	register size_t totallen;

	cp = data;
	cpend = data + *datalen;

	for (vl = vlist; vl < vlist + MAXLIST && vl->name != 0; vl++) {
		namelen = FUNC2(vl->name);
		if (vl->value == 0)
			valuelen = 0;
		else
			valuelen = FUNC2(vl->value);
		totallen = namelen + valuelen + (valuelen != 0) + (cp != data);
		if (cp + totallen > cpend) {
		    FUNC0(stderr, 
			    "***Ignoring variables starting with `%ld'\n",
			    vl->name);
		    break;
		}

		if (cp != data)
			*cp++ = ',';
		FUNC1(cp, vl->name, (size_t)namelen);
		cp += namelen;
		if (valuelen != 0) {
			*cp++ = '=';
			FUNC1(cp, vl->value, (size_t)valuelen);
			cp += valuelen;
		}
	}
	*datalen = (size_t)(cp - data);
}