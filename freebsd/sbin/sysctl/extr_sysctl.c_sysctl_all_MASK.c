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
typedef  int /*<<< orphan*/  name2 ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  bflag ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,size_t) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int FUNC3 (int*,size_t) ; 
 int FUNC4 (int*,size_t,int*,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(int *oid, int len)
{
	int name1[22], name2[22];
	int i, j;
	size_t l1, l2;

	name1[0] = 0;
	name1[1] = 2;
	l1 = 2;
	if (len) {
		FUNC1(name1+2, oid, len * sizeof(int));
		l1 += len;
	} else {
		name1[2] = 1;
		l1++;
	}
	for (;;) {
		l2 = sizeof(name2);
		j = FUNC4(name1, l1, name2, &l2, 0, 0);
		if (j < 0) {
			if (errno == ENOENT)
				return (0);
			else
				FUNC0(1, "sysctl(getnext) %d %zu", j, l2);
		}

		l2 /= sizeof(int);

		if (len < 0 || l2 < (unsigned int)len)
			return (0);

		for (i = 0; i < len; i++)
			if (name2[i] != oid[i])
				return (0);

		i = FUNC3(name2, l2);
		if (!i && !bflag)
			FUNC2('\n');

		FUNC1(name1+2, name2, l2 * sizeof(int));
		l1 = 2 + l2;
	}
}