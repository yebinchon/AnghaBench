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
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static int
FUNC3(RES* ssl, char* arg, char** arg2)
{
	char* as = FUNC2(arg, ' ');
	char* at = FUNC2(arg, '\t');
	if(as && at) {
		if(at < as)
			as = at;
		as[0]=0;
		*arg2 = FUNC0(as+1);
	} else if(as) {
		as[0]=0;
		*arg2 = FUNC0(as+1);
	} else if(at) {
		at[0]=0;
		*arg2 = FUNC0(at+1);
	} else {
		FUNC1(ssl, "error could not find next argument "
			"after %s\n", arg);
		return 0;
	}
	return 1;
}