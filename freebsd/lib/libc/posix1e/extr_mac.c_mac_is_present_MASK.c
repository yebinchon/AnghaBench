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

/* Variables and functions */
 int EINVAL ; 
#define  ENOENT 129 
#define  ENOTDIR 128 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 size_t FUNC4 (char const*,char*) ; 
 int FUNC5 (char const*) ; 
 int FUNC6 (char*,int*,size_t*) ; 

int
FUNC7(const char *policyname)
{
	int mib[5];
	size_t siz;
	char *mibname;
	int error;

	if (policyname != NULL) {
		if (policyname[FUNC4(policyname, ".=")] != '\0') {
			errno = EINVAL;
			return (-1);
		}
		mibname = FUNC1(sizeof("security.mac.") - 1 +
		    FUNC5(policyname) + sizeof(".enabled"));
		if (mibname == NULL)
			return (-1);
		FUNC3(mibname, "security.mac.");
		FUNC2(mibname, policyname);
		FUNC2(mibname, ".enabled");
		siz = 5;
		error = FUNC6(mibname, mib, &siz);
		FUNC0(mibname);
	} else {
		siz = 3;
		error = FUNC6("security.mac", mib, &siz);
	}
	if (error == -1) {
		switch (errno) {
		case ENOTDIR:
		case ENOENT:
			return (0);
		default:
			return (error);
		}
	}
	return (1);
}