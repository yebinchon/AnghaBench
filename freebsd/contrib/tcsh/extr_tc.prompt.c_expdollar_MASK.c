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
struct varent {char** vec; } ;
struct Strbuf {int dummy; } ;
typedef  char Char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Strbuf*,char) ; 
 int FUNC1 (char const*) ; 
 char const TRIM ; 
 struct varent* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int) ; 

int
FUNC7(struct Strbuf *buf, const Char **srcp, Char attr)
{
    struct varent *vp;
    const Char *src = *srcp;
    Char *var, *val;
    size_t i;
    int curly = 0;

    /* found a variable, expand it */
    var = FUNC6((FUNC1(src) + 1) * sizeof (*var));
    for (i = 0; ; i++) {
	var[i] = *++src & TRIM;
	if (i == 0 && var[i] == '{') {
	    curly = 1;
	    var[i] = *++src & TRIM;
	}
	if (!FUNC3(var[i]) && var[i] != '_') {

	    var[i] = '\0';
	    break;
	}
    }
    if (curly && (*src & TRIM) == '}')
	src++;

    vp = FUNC2(var);
    if (vp && vp->vec) {
	for (i = 0; vp->vec[i] != NULL; i++) {
	    for (val = vp->vec[i]; *val; val++)
		if (*val != '\n' && *val != '\r')
		    FUNC0(buf, *val | attr);
	    if (vp->vec[i+1])
		FUNC0(buf, ' ' | attr);
	}
    }
    else {
	val = (!vp) ? FUNC4(var) : NULL;
	if (val) {
	    for (; *val; val++)
		if (*val != '\n' && *val != '\r')
		    FUNC0(buf, *val | attr);
	} else {
	    *srcp = src;
	    FUNC5(var);
	    return 0;
	}
    }

    *srcp = src;
    FUNC5(var);
    return 1;
}