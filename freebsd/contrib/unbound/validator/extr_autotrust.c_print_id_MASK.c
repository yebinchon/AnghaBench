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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 char* FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(FILE* out, char* fname, uint8_t* nm, size_t nmlen, uint16_t dclass)
{
	char* s = FUNC3(nm, nmlen);
	if(!s) {
		FUNC2("malloc failure in write to %s", fname);
		return 0;
	}
	if(FUNC0(out, ";;id: %s %d\n", s, (int)dclass) < 0) {
		FUNC2("could not write to %s: %s", fname, FUNC4(errno));
		FUNC1(s);
		return 0;
	}
	FUNC1(s);
	return 1;
}