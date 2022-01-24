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
struct KeyFuncs {unsigned char* name; int /*<<< orphan*/  func; } ;
struct TYPE_3__ {int /*<<< orphan*/  cmd; int /*<<< orphan*/  str; } ;
typedef  TYPE_1__ XmapVal ;
typedef  unsigned char Char ;

/* Variables and functions */
 unsigned char* FUNC0 (int,int,char*) ; 
 struct KeyFuncs* FuncNames ; 
 int /*<<< orphan*/  STRBB ; 
 int /*<<< orphan*/  STRQQ ; 
#define  XK_CMD 130 
#define  XK_EXE 129 
#define  XK_STR 128 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfree ; 
 int /*<<< orphan*/  FUNC5 (char const*,unsigned char const*) ; 

void
FUNC6(const Char *key, const XmapVal *val, int ntype)
{
    struct KeyFuncs *fp;
    static const char *fmt = "%s\n";

    FUNC5("%-15S-> ", key);
    if (val != NULL)
	switch (ntype) {
	case XK_STR:
	case XK_EXE: {
	    unsigned char *p;

	    p = FUNC4(&val->str, ntype == XK_STR ? STRQQ : STRBB);
	    FUNC2(p, xfree);
	    FUNC5(fmt, p);
	    FUNC3(p);
	    break;
	}
	case XK_CMD:
	    for (fp = FuncNames; fp->name; fp++)
		if (val->cmd == fp->func)
		    FUNC5(fmt, fp->name);
		break;
	default:
	    FUNC1();
	    break;
	}
    else
	FUNC5(fmt, FUNC0(9, 7, "no input"));
}