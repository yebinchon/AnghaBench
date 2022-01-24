#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* re_endp; } ;
typedef  TYPE_1__ regex_t ;
typedef  int /*<<< orphan*/  efbuf ;

/* Variables and functions */
 int /*<<< orphan*/  REG_ATOI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(char *name)
{
	static char efbuf[100];
	regex_t re;

	FUNC3(efbuf, "REG_%s", name);
	FUNC0(FUNC4(efbuf) < sizeof(efbuf));
	re.re_endp = efbuf;
	(void) FUNC2(REG_ATOI, &re, efbuf, sizeof(efbuf));
	return(FUNC1(efbuf));
}