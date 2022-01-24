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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  nm ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_MAX_DOMAINLEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static int
FUNC6(RES* ssl, char* str, uint8_t** res, size_t* len, int* labs)
{
	uint8_t nm[LDNS_MAX_DOMAINLEN+1];
	size_t nmlen = sizeof(nm);
	int status;
	*res = NULL;
	*len = 0;
	*labs = 0;
	status = FUNC4(str, nm, &nmlen);
	if(status != 0) {
		FUNC5(ssl, "error cannot parse name %s at %d: %s\n", str,
			FUNC0(status),
			FUNC3(status));
		return 0;
	}
	*res = FUNC2(nm, nmlen);
	if(!*res) {
		FUNC5(ssl, "error out of memory\n");
		return 0;
	}
	*labs = FUNC1(*res, len);
	return 1;
}