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
struct hostent {char* h_name; char** h_aliases; int h_length; char** h_addr_list; int /*<<< orphan*/  h_addrtype; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int TRY_AGAIN ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static struct hostent *
FUNC5(struct hostent *hp, int *errp)
{
	struct hostent *nhp;
	char *cp, **pp;
	int size, addrsize;
	int nalias = 0, naddr = 0;
	int al_off;
	int i;

	if (hp == NULL)
		return hp;

	/* count size to be allocated */
	size = sizeof(struct hostent);
	if (hp->h_name != NULL)
		size += FUNC4(hp->h_name) + 1;
	if ((pp = hp->h_aliases) != NULL) {
		for (i = 0; *pp != NULL; i++, pp++) {
			if (**pp != '\0') {
				size += FUNC4(*pp) + 1;
				nalias++;
			}
		}
	}
	/* adjust alignment */
	size = FUNC0(size);
	al_off = size;
	size += sizeof(char *) * (nalias + 1);
	addrsize = FUNC0(hp->h_length);
	if ((pp = hp->h_addr_list) != NULL) {
		while (*pp++ != NULL)
			naddr++;
	}
	size += addrsize * naddr;
	size += sizeof(char *) * (naddr + 1);

	/* copy */
	if ((nhp = (struct hostent *)FUNC1(size)) == NULL) {
		*errp = TRY_AGAIN;
		return NULL;
	}
	cp = (char *)&nhp[1];
	if (hp->h_name != NULL) {
		nhp->h_name = cp;
		FUNC3(cp, hp->h_name);
		cp += FUNC4(cp) + 1;
	} else
		nhp->h_name = NULL;
	nhp->h_aliases = (char **)((char *)nhp + al_off);
	if ((pp = hp->h_aliases) != NULL) {
		for (i = 0; *pp != NULL; pp++) {
			if (**pp != '\0') {
				nhp->h_aliases[i++] = cp;
				FUNC3(cp, *pp);
				cp += FUNC4(cp) + 1;
			}
		}
	}
	nhp->h_aliases[nalias] = NULL;
	cp = (char *)&nhp->h_aliases[nalias + 1];
	nhp->h_addrtype = hp->h_addrtype;
	nhp->h_length = hp->h_length;
	nhp->h_addr_list = (char **)cp;
	if ((pp = hp->h_addr_list) != NULL) {
		cp = (char *)&nhp->h_addr_list[naddr + 1];
		for (i = 0; *pp != NULL; pp++) {
			nhp->h_addr_list[i++] = cp;
			FUNC2(cp, *pp, hp->h_length);
			cp += addrsize;
		}
	}
	nhp->h_addr_list[naddr] = NULL;
	return nhp;
}