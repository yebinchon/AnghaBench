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
struct Hist {int /*<<< orphan*/  Hlex; int /*<<< orphan*/  histline; int /*<<< orphan*/  Hnum; } ;
typedef  struct Hist* ptr_t ;
typedef  char Char ;

/* Variables and functions */
 int /*<<< orphan*/  HistLit ; 
 int MB_LEN_MAX ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int) ; 

char *
FUNC6(int fmt, ptr_t ptr)
{
    struct Hist *hp = ptr;
    char *buf;

    switch (fmt) {
    case 'h':
	return FUNC3("%6d", hp->Hnum);
    case 'R':
	if (HistLit && hp->histline)
	    return FUNC3("%S", hp->histline);
	else {
	    Char *istr, *ip;
	    char *p;

	    istr = FUNC2(&hp->Hlex);
	    buf = FUNC5(FUNC0(istr) * MB_LEN_MAX + 1);

	    for (p = buf, ip = istr; *ip != '\0'; ip++)
		p += FUNC1(p, *ip);

	    *p = '\0';
	    FUNC4(istr);
	    return buf;
	}
    default:
	buf = FUNC5(1);
	buf[0] = '\0';
	return buf;
    }
}