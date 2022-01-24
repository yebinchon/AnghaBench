#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  buf; } ;
struct TYPE_7__ {scalar_t__ cmd; TYPE_1__ str; } ;
typedef  TYPE_2__ XmapVal ;
struct TYPE_8__ {int* buf; int len; } ;
typedef  scalar_t__ KEYCMD ;
typedef  int Char ;
typedef  TYPE_3__ CStr ;

/* Variables and functions */
 int /*<<< orphan*/  AltKeyMap ; 
 int /*<<< orphan*/  CcKeyMap ; 
 int /*<<< orphan*/  CurrentKeyMap ; 
 scalar_t__ F_INSERT ; 
 scalar_t__ F_XKEY ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int*) ; 
 int FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 int MB_LEN_MAX ; 
 int META ; 
 scalar_t__ MetaNext ; 
 int OKCMD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STRnokanji ; 
#define  XK_CMD 130 
#define  XK_EXE 129 
#define  XK_STR 128 
 scalar_t__ _enable_mbdisp ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(KEYCMD *cmdnum, Char *ch)
{
    KEYCMD  cmd = 0;
    int     num;

    while (cmd == 0 || cmd == F_XKEY) {
	if ((num = FUNC1(ch)) != 1) {	/* if EOF or error */
	    return num;
	}
#ifdef	KANJI
	if (
#ifdef DSPMBYTE
	     _enable_mbdisp &&
#else
	     MB_LEN_MAX == 1 &&
#endif
	     !adrof(STRnokanji) && (*ch & META)) {
	    MetaNext = 0;
	    cmd = F_INSERT;
	    break;
	}
	else
#endif /* KANJI */
	if (MetaNext) {
	    MetaNext = 0;
	    *ch |= META;
	}

	cmd = FUNC0(*ch);
	if (cmd == F_XKEY) {
	    XmapVal val;
	    CStr cstr;
	    cstr.buf = ch;
	    cstr.len = 1;
	    switch (FUNC2(&cstr, &val)) {
	    case XK_CMD:
		cmd = val.cmd;
		break;
	    case XK_STR:
		FUNC3(val.str.buf);
		break;
	    case XK_EXE:
		FUNC4(val.str.buf);
		break;
	    default:
		FUNC5();
		break;
	    }
	}
	if (!AltKeyMap) 
	    CurrentKeyMap = CcKeyMap;
    }
    *cmdnum = cmd;
    return OKCMD;
}