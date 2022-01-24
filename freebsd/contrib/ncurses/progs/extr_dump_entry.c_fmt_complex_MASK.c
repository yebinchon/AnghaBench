#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* text; int /*<<< orphan*/  used; } ;
struct TYPE_6__ {int /*<<< orphan*/  term_names; } ;
typedef  TYPE_1__ TERMTYPE ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,size_t) ; 
 TYPE_2__ tmpbuf ; 

__attribute__((used)) static char *
FUNC6(TERMTYPE *tterm, const char *capability, char *src, int level)
{
    bool percent = FALSE;
    bool params = FUNC2(src);

    while (*src != '\0') {
	switch (*src) {
	case '\\':
	    percent = FALSE;
	    FUNC5(&tmpbuf, src++, (size_t) 1);
	    break;
	case '%':
	    percent = TRUE;
	    break;
	case '?':		/* "if" */
	case 't':		/* "then" */
	case 'e':		/* "else" */
	    if (percent) {
		percent = FALSE;
		tmpbuf.text[tmpbuf.used - 1] = '\n';
		/* treat a "%e" as else-if, on the same level */
		if (*src == 'e') {
		    FUNC3(&tmpbuf, level);
		    FUNC5(&tmpbuf, "%", (size_t) 1);
		    FUNC5(&tmpbuf, src, (size_t) 1);
		    src++;
		    params = FUNC2(src);
		    if (!params && *src != '\0' && *src != '%') {
			FUNC5(&tmpbuf, "\n", (size_t) 1);
			FUNC3(&tmpbuf, level + 1);
		    }
		} else {
		    FUNC3(&tmpbuf, level + 1);
		    FUNC5(&tmpbuf, "%", (size_t) 1);
		    FUNC5(&tmpbuf, src, (size_t) 1);
		    if (*src++ == '?') {
			src = FUNC6(tterm, capability, src, level + 1);
			if (*src != '\0' && *src != '%') {
			    FUNC5(&tmpbuf, "\n", (size_t) 1);
			    FUNC3(&tmpbuf, level + 1);
			}
		    } else if (level == 1) {
			FUNC1("%s: %%%c without %%? in %s",
				    FUNC0(tterm->term_names),
				    *src, capability);
		    }
		}
		continue;
	    }
	    break;
	case ';':		/* "endif" */
	    if (percent) {
		percent = FALSE;
		if (level > 1) {
		    tmpbuf.text[tmpbuf.used - 1] = '\n';
		    FUNC3(&tmpbuf, level);
		    FUNC5(&tmpbuf, "%", (size_t) 1);
		    FUNC5(&tmpbuf, src++, (size_t) 1);
		    if (src[0] == '%'
			&& src[1] != '\0'
			&& (FUNC4("?e;", src[1])) == 0) {
			tmpbuf.text[tmpbuf.used++] = '\n';
			FUNC3(&tmpbuf, level);
		    }
		    return src;
		}
		FUNC1("%s: %%; without %%? in %s",
			    FUNC0(tterm->term_names),
			    capability);
	    }
	    break;
	case 'p':
	    if (percent && params) {
		tmpbuf.text[tmpbuf.used - 1] = '\n';
		FUNC3(&tmpbuf, level + 1);
		FUNC5(&tmpbuf, "%", (size_t) 1);
	    }
	    params = FALSE;
	    percent = FALSE;
	    break;
	case ' ':
	    FUNC5(&tmpbuf, "\\s", (size_t) 2);
	    ++src;
	    continue;
	default:
	    percent = FALSE;
	    break;
	}
	FUNC5(&tmpbuf, src++, (size_t) 1);
    }
    return src;
}