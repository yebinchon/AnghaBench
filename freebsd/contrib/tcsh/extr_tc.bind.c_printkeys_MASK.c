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
struct KeyFuncs {scalar_t__ func; scalar_t__ name; } ;
struct TYPE_3__ {int len; scalar_t__* buf; } ;
typedef  scalar_t__ KEYCMD ;
typedef  scalar_t__ Char ;
typedef  TYPE_1__ CStr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 scalar_t__* CcAltMap ; 
 scalar_t__* CcKeyMap ; 
 scalar_t__ F_UNASSIGNED ; 
 struct KeyFuncs* FuncNames ; 
 int /*<<< orphan*/  STRQQ ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfree ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void
FUNC5(KEYCMD *map, int first, int last)
{
    struct KeyFuncs *fp;
    Char    firstbuf[2], lastbuf[2];
    CStr fb, lb;
    unsigned char *unparsed;
    fb.buf = firstbuf;
    lb.buf = lastbuf;

    firstbuf[0] = (Char) first;
    firstbuf[1] = 0;
    lastbuf[0] = (Char) last;
    lastbuf[1] = 0;
    fb.len = 1;
    lb.len = 1;

    unparsed = FUNC3(&fb, STRQQ);
    FUNC1(unparsed, xfree);
    if (map[first] == F_UNASSIGNED) {
	if (first == last)
	    FUNC4(FUNC0(20, 10, "%-15s->  is undefined\n"), unparsed);
	FUNC2(unparsed);
	return;
    }

    for (fp = FuncNames; fp->name; fp++) {
	if (fp->func == map[first]) {
	    if (first == last)
		FUNC4("%-15s->  %s\n", unparsed, fp->name);
	    else {
		unsigned char *p;

		p = FUNC3(&lb, STRQQ);
		FUNC1(p, xfree);
		FUNC4("%-4s to %-7s->  %s\n", unparsed, p, fp->name);
	    }
	    FUNC2(unparsed);
	    return;
	}
    }
    FUNC4(FUNC0(20, 11, "BUG!!! %s isn't bound to anything.\n"), unparsed);
    if (map == CcKeyMap)
	FUNC4("CcKeyMap[%d] == %d\n", first, CcKeyMap[first]);
    else
	FUNC4("CcAltMap[%d] == %d\n", first, CcAltMap[first]);
    FUNC2(unparsed);
}