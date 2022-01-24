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
struct testcase {char* str; int n; int* res; } ;

/* Variables and functions */
 int MAXSIZE ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (unsigned char*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct testcase* tests ; 

int
FUNC5(int argc, char **argv)
{
    unsigned char data[MAXSIZE];
    struct testcase *t;
    int ret = 0;

    for (t = tests; t->str; ++t) {
	int i;

	ret = FUNC0 (t->str, FUNC4(t->str), data, t->n);
	if (ret)
	    FUNC1(1, "out of memory");
	if (FUNC2 (data, t->res, t->n) != 0) {
	    FUNC3 ("n-fold(\"%s\", %d) failed\n", t->str, t->n);
	    FUNC3 ("should be: ");
	    for (i = 0; i < t->n; ++i)
		FUNC3 ("%02x", t->res[i]);
	    FUNC3 ("\nresult was: ");
	    for (i = 0; i < t->n; ++i)
		FUNC3 ("%02x", data[i]);
	    FUNC3 ("\n");
	    ret = 1;
	}
    }
    return ret;
}