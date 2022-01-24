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
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC1 (size_t) ; 
 int FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC5 (int s, size_t sz, char *expl)
{
    char *str = FUNC1(sz);
    char *p = str;
    if(str == NULL)
	FUNC0(s, NULL, "%s too long", expl);
    while(p < str + sz) {
	if(FUNC2(s, p, 1) != 1)
	    FUNC4("read: %s", FUNC3(errno));
	if(*p == '\0')
	    return str;
	p++;
    }
    FUNC0(s, NULL, "%s too long", expl);
}