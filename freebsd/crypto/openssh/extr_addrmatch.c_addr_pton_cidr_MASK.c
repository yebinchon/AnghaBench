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
typedef  unsigned long u_int ;
struct xaddr {int /*<<< orphan*/  af; } ;
typedef  int /*<<< orphan*/  addrbuf ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct xaddr*,unsigned long) ; 
 int FUNC1 (char*,struct xaddr*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct xaddr*,struct xaddr*,int) ; 
 char* FUNC5 (char*,char) ; 
 int FUNC6 (char*,char const*,int) ; 
 unsigned long FUNC7 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC8(const char *p, struct xaddr *n, u_int *l)
{
	struct xaddr tmp;
	long unsigned int masklen = 999;
	char addrbuf[64], *mp, *cp;

	/* Don't modify argument */
	if (p == NULL || FUNC6(addrbuf, p, sizeof(addrbuf)) >= sizeof(addrbuf))
		return -1;

	if ((mp = FUNC5(addrbuf, '/')) != NULL) {
		*mp = '\0';
		mp++;
		masklen = FUNC7(mp, &cp, 10);
		if (*mp == '\0' || *cp != '\0' || masklen > 128)
			return -1;
	}

	if (FUNC1(addrbuf, &tmp) == -1)
		return -1;

	if (mp == NULL)
		masklen = FUNC2(tmp.af);
	if (FUNC3(tmp.af, masklen) == -1)
		return -2;
	if (FUNC0(&tmp, masklen) != 0)
		return -2;

	if (n != NULL)
		FUNC4(n, &tmp, sizeof(*n));
	if (l != NULL)
		*l = masklen;

	return 0;
}