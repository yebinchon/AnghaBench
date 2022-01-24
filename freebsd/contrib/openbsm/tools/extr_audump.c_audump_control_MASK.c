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
typedef  int /*<<< orphan*/  time_t ;

/* Variables and functions */
 int PATH_MAX ; 
 scalar_t__ FUNC0 (long,int,char*) ; 
 scalar_t__ FUNC1 (char*,long*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 
 int FUNC4 (char*,int) ; 
 int FUNC5 (int*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC6 (size_t*) ; 
 int FUNC7 (char*,int) ; 
 int FUNC8 (char*,int) ; 
 int FUNC9 (int*) ; 
 int FUNC10 (char*,int) ; 
 int FUNC11 (char*,int) ; 
 int FUNC12 (int*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static void
FUNC15(void)
{
	char string[PATH_MAX], string2[PATH_MAX];
	int ret, val, qsz;
	long policy;
	time_t age;
	size_t size;

	ret = FUNC7(string, PATH_MAX);
	if (ret == -2)
		FUNC2(-1, "getacflg");
	if (ret != 0)
		FUNC3(-1, "getacflg: %d", ret);

	FUNC13("flags:%s\n", string);

	ret = FUNC9(&val);
	if (ret == -2)
		FUNC2(-1, "getacmin");
	if (ret != 0)
		FUNC3(-1, "getacmin: %d", ret);

	FUNC13("min:%d\n", val);

	ret = FUNC10(string, PATH_MAX);
	if (ret == -2)
		FUNC2(-1, "getacna");
	if (ret != 0)
		FUNC3(-1, "getacna: %d", ret);

	FUNC13("naflags:%s\n", string);

	FUNC14();
	do {
		ret = FUNC4(string, PATH_MAX);
		if (ret == -1)
			break;
		if (ret == -2)
			FUNC2(-1, "getacdir");
		if (ret != 0)
			FUNC3(-1, "getacdir: %d", ret);
		FUNC13("dir:%s\n", string);

	} while (ret == 0);

	ret = FUNC11(string, PATH_MAX);
	if (ret != 0)
		FUNC2(-1, "getacpol");
	if (FUNC1(string, &policy) < 0)
		FUNC2(-1, "au_strtopol");
	if (FUNC0(policy, PATH_MAX, string2) < 0)
		FUNC2(-1, "au_poltostr");
	FUNC13("policy:%s\n", string2);

	ret = FUNC6(&size);
	if (ret == -2)
		FUNC2(-1, "getacfilesz");
	if (ret != 0)
		FUNC2(-1, "getacfilesz: %d", ret);

	FUNC13("filesz:%ldB\n", size);

	ret = FUNC12(&qsz);
	if (ret == -2)
		FUNC2(-1, "getacqsize");
	if (ret != 0)
		FUNC2(-1, "getacqzize: %d", ret);

	FUNC13("qsize:%d\n", qsz);

	ret = FUNC8(string, PATH_MAX);
	if (ret == -2)
		FUNC2(-1, "getachost");
	if (ret == -3)
		FUNC2(-1, "getachost: %d", ret);
	if (ret == 0 && ret != 1)
		FUNC13("host:%s\n", string);

	ret = FUNC5(&val, &age, &size);
	if (ret == -2)
		FUNC2(-1, "getacexpire");
	if (ret == -1)
		FUNC2(-1, "getacexpire: %d", ret);
	if (ret == 0 && ret != 1)
		FUNC13("expire-after:%ldB  %s %lds\n", size,
		    val ? "AND" : "OR", age);
}