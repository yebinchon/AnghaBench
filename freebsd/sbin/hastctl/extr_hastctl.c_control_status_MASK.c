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
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int
FUNC3(struct nv *nv)
{
	unsigned int ii;
	const char *str;
	int error, hprinted, ret;

	hprinted = 0;
	ret = 0;

	for (ii = 0; ; ii++) {
		str = FUNC1(nv, "resource%u", ii);
		if (str == NULL)
			break;
		if (!hprinted) {
			FUNC2("Name\tStatus\t Role\t\tComponents\n");
			hprinted = 1;
		}
		FUNC2("%s\t", str);
		error = FUNC0(nv, "error%u", ii);
		if (error != 0) {
			if (ret == 0)
				ret = error;
			FUNC2("ERR%d\n", error);
			continue;
		}
		str = FUNC1(nv, "status%u", ii);
		FUNC2("%-9s", (str != NULL) ? str : "-");
		FUNC2("%-15s", FUNC1(nv, "role%u", ii));
		FUNC2("%s\t",
		    FUNC1(nv, "localpath%u", ii));
		FUNC2("%s\n",
		    FUNC1(nv, "remoteaddr%u", ii));
	}
	return (ret);
}