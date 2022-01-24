#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uChar ;
struct command {int dummy; } ;
struct TYPE_12__ {int* buf; int len; } ;
typedef  scalar_t__ KEYCMD ;
typedef  char Char ;
typedef  TYPE_1__ CStr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int,char*) ; 
 char CHAR ; 
 scalar_t__* CcAltMap ; 
 scalar_t__* CcKeyMap ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ F_UNASSIGNED ; 
 scalar_t__ F_XKEY ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  MapsAreInited ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int*) ; 
 int* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct command*) ; 
#define  XK_CMD 130 
#define  XK_EXE 129 
#define  XK_STR 128 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int*) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/ * FUNC24 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC25 (char*) ; 
 int /*<<< orphan*/ * FUNC26 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__*,TYPE_1__*) ; 
 int /*<<< orphan*/  xfree ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,char*) ; 

void
FUNC30(Char **v, struct command *c)
{
    KEYCMD *map;
    int     ntype, no, removeb, key, bindk;
    Char   *par;
    Char    p;
    KEYCMD  cmd;
    CStr    in;
    CStr    out;
    uChar   ch;

    FUNC11(c);
    if (!MapsAreInited)
	FUNC21();

    map = CcKeyMap;
    ntype = XK_CMD;
    key = removeb = bindk = 0;
    for (no = 1, par = v[no]; 
	 par != NULL && (*par++ & CHAR) == '-'; no++, par = v[no]) {
	if ((p = (*par & CHAR)) == '-') {
	    no++;
	    break;
	}
	else 
	    switch (p) {
	    case 'b':
		bindk = 1;
		break;
	    case 'k':
		key = 1;
		break;
	    case 'a':
		map = CcAltMap;
		break;
	    case 's':
		ntype = XK_STR;
		break;
	    case 'c':
		ntype = XK_EXE;
		break;
	    case 'r':
		removeb = 1;
		break;
	    case 'v':
		FUNC22();
		return;
	    case 'e':
		FUNC20();
		return;
	    case 'd':
#ifdef VIDEFAULT
		ed_InitVIMaps();
#else /* EMACSDEFAULT */
		FUNC20();
#endif /* VIDEFAULT */
		return;
	    case 'l':
		FUNC23();
		return;
	    default:
		FUNC16();
		return;
	    }
    }

    if (!v[no]) {
	FUNC27();
	return;
    }

    if (key) {
	if (!FUNC6(v[no]))
	    FUNC29(FUNC2(20, 1, "Invalid key name `%S'\n"), v[no]);
	in.buf = FUNC10(v[no++]);
	in.len = FUNC9(in.buf);
    }
    else {
	if (bindk) {
	    if (FUNC24(v[no++], &in) == NULL)
		return;
	}
	else {
	    if (FUNC26(v[no++], &in) == NULL)
		return;
	}
    }
    FUNC18(in.buf, xfree);

#ifndef WINNT_NATIVE
    if (in.buf[0] > 0xFF) {
	FUNC15(in.buf);
	FUNC19(in.buf);
	return;
    }
#endif
    ch = (uChar) in.buf[0];

    if (removeb) {
	if (key)
	    (void) FUNC3(&in);
	else if (in.len > 1) {
	    (void) FUNC5(&in);
	}
	else if (map[ch] == F_XKEY) {
	    (void) FUNC5(&in);
	    map[ch] = F_UNASSIGNED;
	}
	else {
	    map[ch] = F_UNASSIGNED;
	}
	FUNC19(in.buf);
	return;
    }
    if (!v[no]) {
	if (key)
	    FUNC7(&in);
	else
	    FUNC28(map, &in);
	FUNC19(in.buf);
	return;
    }
    if (v[no + 1]) {
	FUNC16();
	FUNC19(in.buf);
	return;
    }
    switch (ntype) {
    case XK_STR:
    case XK_EXE:
	if (FUNC26(v[no], &out) == NULL) {
	    FUNC19(in.buf);
	    return;
	}
	FUNC18(out.buf, xfree);
	if (key) {
	    if (FUNC8(&in, FUNC13(&out), ntype) == -1)
		FUNC29(FUNC2(20, 2, "Bad key name: %S\n"), in.buf);
	    else
		FUNC17(out.buf);
	}
	else
	    FUNC0(&in, FUNC13(&out), ntype);
	map[ch] = F_XKEY;
	break;
    case XK_CMD:
	if ((cmd = FUNC25(v[no])) == 0) {
	    FUNC19(in.buf);
	    return;
	}
	if (key)
	    (void) FUNC8(&in, FUNC12((int) cmd), ntype);
	else {
	    if (in.len > 1) {
		FUNC0(&in, FUNC12((int) cmd), ntype);
		map[ch] = F_XKEY;
	    }
	    else {
		FUNC4(map, &in);
		map[ch] = cmd;
	    }
	}
	break;
    default:
	FUNC14();
	break;
    }
    FUNC19(in.buf);
    if (key)
	FUNC1();
}