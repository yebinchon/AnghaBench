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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (char*,int,char*) ; 
 char* FUNC3 () ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

char *FUNC7(char *req)
{
	int len;
	char *buf;

	if ((len = FUNC1(req)) < 0) {
		FUNC6("ipsec_get_policylen: %s\n", FUNC3());
		return NULL;
	}

	if ((buf = FUNC4(len)) == NULL) {
		FUNC5("malloc");
		return NULL;
	}

	if ((len = FUNC2(buf, len, req)) < 0) {
		FUNC6("ipsec_set_policy: %s\n", FUNC3());
		FUNC0(buf);
		return NULL;
	}

	return buf;
}