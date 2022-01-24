#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct TYPE_6__ {int /*<<< orphan*/  i6; } ;
struct TYPE_7__ {int al_not; int al_family; int /*<<< orphan*/  al_i6addr; TYPE_1__ al_i6mask; int /*<<< orphan*/  al_mask; } ;
typedef  TYPE_2__ alist_t ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 int AF_UNSPEC ; 
 scalar_t__ FUNC0 (char) ; 
 int FUNC1 (char*) ; 
 TYPE_2__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC9 (char*,char) ; 

alist_t *
FUNC10(int family, char *host)
{
	int a, b, c, d, bits;
	char *slash;
	alist_t *al;
	u_int mask;

	if (family == AF_UNSPEC) {
		if (FUNC9(host, ':') != NULL)
			family = AF_INET6;
		else
			family = AF_INET;
	}
	if (family != AF_INET && family != AF_INET6)
		return NULL;

	al = FUNC2(1, sizeof(*al));
	if (al == NULL) {
		FUNC4(stderr, "alist_new out of memory\n");
		return NULL;
	}

	while (FUNC0(*host))
		host++;

	if (*host == '!') {
		al->al_not = 1;
		host++;
		while (FUNC0(*host))
			host++;
	}

	bits = -1;
	slash = FUNC9(host, '/');
	if (slash != NULL) {
		*slash = '\0';
		bits = FUNC1(slash + 1);
	}

	if (family == AF_INET) {
		if (bits > 32)
			goto bad;

		a = b = c = d = -1;
		FUNC8(host, "%d.%d.%d.%d", &a, &b, &c, &d);

		if (bits > 0 && bits < 33) {
			mask = 0xffffffff << (32 - bits);
		} else if (b == -1) {
			mask = 0xff000000;
			b = c = d = 0;
		} else if (c == -1) {
			mask = 0xffff0000;
			c = d = 0;
		} else if (d == -1) {
			mask = 0xffffff00;
			d = 0;
		} else {
			mask = 0xffffffff;
		}
		al->al_mask = FUNC7(mask);
	} else {
		if (bits > 128)
			goto bad;
		FUNC3(bits, al->al_i6mask.i6);
	}

	if (FUNC6(family, host, &al->al_i6addr) == -1) {
		if (slash != NULL)
			*slash = '/';
		FUNC4(stderr, "Cannot parse hostname\n");
		goto bad;
	}
	al->al_family = family;
	if (slash != NULL)
		*slash = '/';
	return al;
bad:
	FUNC5(al);
	return NULL;
}