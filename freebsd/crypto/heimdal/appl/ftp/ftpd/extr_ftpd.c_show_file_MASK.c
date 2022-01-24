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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*) ; 
 size_t FUNC4 (char*,char*) ; 

__attribute__((used)) static int
FUNC5(const char *file, int code)
{
    FILE *f;
    char buf[128];

    f = FUNC2(file, "r");
    if(f == NULL)
	return -1;
    while(FUNC1(buf, sizeof(buf), f)){
	buf[FUNC4(buf, "\r\n")] = '\0';
	FUNC3(code, "%s", buf);
    }
    FUNC0(f);
    return 0;
}