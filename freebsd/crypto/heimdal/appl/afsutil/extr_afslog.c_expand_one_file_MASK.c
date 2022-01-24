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
 int /*<<< orphan*/ * FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *
FUNC4(FILE *f, const char *cell)
{
    static char buf[1024];
    char *p;

    while (FUNC0 (buf, sizeof(buf), f) != NULL) {
	if(buf[0] == '>') {
	    for(p = buf; *p && !FUNC1((unsigned char)*p) && *p != '#'; p++)
		;
	    *p = '\0';
	    if(FUNC3(buf + 1, cell, FUNC2(cell)) == 0)
		return buf + 1;
	}
	buf[0] = '\0';
    }
    return NULL;
}