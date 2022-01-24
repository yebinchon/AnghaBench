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
struct nv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nv*,char*,unsigned int) ; 
 char* FUNC1 (struct nv*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 

__attribute__((used)) static int
FUNC6(struct nv *nv, const char *newrole)
{
	const char *res, *oldrole;
	unsigned int ii;
	int error, ret;

	ret = 0;

	for (ii = 0; ; ii++) {
		res = FUNC1(nv, "resource%u", ii);
		if (res == NULL)
			break;
		FUNC3("[%s] ", res);
		error = FUNC0(nv, "error%u", ii);
		if (error != 0) {
			if (ret == 0)
				ret = error;
			FUNC4("Received error %d from hastd.", error);
			continue;
		}
		oldrole = FUNC1(nv, "role%u", ii);
		if (FUNC5(oldrole, newrole) == 0)
			FUNC2(2, "Role unchanged (%s).", oldrole);
		else {
			FUNC2(1, "Role changed from %s to %s.", oldrole,
			    newrole);
		}
	}
	FUNC3("%s", "");
	return (ret);
}