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
struct delegpt {int dummy; } ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,size_t*,int*) ; 
 struct delegpt* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static int
FUNC5(RES* ssl, char* args, uint8_t** nm, struct delegpt** dp,
	int* insecure, int* prime)
{
	char* zonename;
	char* rest;
	size_t nmlen;
	int nmlabs;
	/* parse all -x args */
	while(args[0] == '+') {
		if(!FUNC0(ssl, args, &rest))
			return 0;
		while(*(++args) != 0) {
			if(*args == 'i' && insecure)
				*insecure = 1;
			else if(*args == 'p' && prime)
				*prime = 1;
			else {
				(void)FUNC4(ssl, "error: unknown option %s\n", args);
				return 0;
			}
		}
		args = rest;
	}
	/* parse name */
	if(dp) {
		if(!FUNC0(ssl, args, &rest))
			return 0;
		zonename = args;
		args = rest;
	} else	zonename = args;
	if(!FUNC2(ssl, zonename, nm, &nmlen, &nmlabs))
		return 0;

	/* parse dp */
	if(dp) {
		if(!(*dp = FUNC3(ssl, args, *nm, 1))) {
			FUNC1(*nm);
			return 0;
		}
	}
	return 1;
}