#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char** Strings; int /*<<< orphan*/  term_names; } ;
struct TYPE_4__ {TYPE_3__ tterm; scalar_t__ startline; } ;
typedef  TYPE_1__ ENTRY ;

/* Variables and functions */
 char L_BRACE ; 
 int MAX_ENTRY_SIZE ; 
 char R_BRACE ; 
 unsigned int STRCOUNT ; 
 void* S_QUOTE ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,scalar_t__) ; 
 int _nc_curr_line ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (char*,char) ; 
 scalar_t__ FUNC7 (char*) ; 
 long FUNC8 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(ENTRY * ep)
{
    unsigned n;
    int ch;
    char *s, *d, *t;
    char result[MAX_ENTRY_SIZE];

    /*
     * Look for strings that contain %{number}, convert them to %'char',
     * which is shorter and runs a little faster.
     */
    for (n = 0; n < STRCOUNT; n++) {
	s = ep->tterm.Strings[n];
	if (FUNC0(s)
	    && FUNC6(s, L_BRACE) != 0) {
	    d = result;
	    t = s;
	    while ((ch = *t++) != 0) {
		*d++ = (char) ch;
		if (ch == '\\') {
		    *d++ = *t++;
		} else if ((ch == '%')
			   && (*t == L_BRACE)) {
		    char *v = 0;
		    long value = FUNC8(t + 1, &v, 0);
		    if (v != 0
			&& *v == R_BRACE
			&& value > 0
			&& value != '\\'	/* FIXME */
			&& value < 127
			&& FUNC5((int) value)) {
			*d++ = S_QUOTE;
			*d++ = (char) value;
			*d++ = S_QUOTE;
			t = (v + 1);
		    }
		}
	    }
	    *d = 0;
	    if (FUNC7(result) < FUNC7(s))
		FUNC1(s, result, FUNC7(s) + 1);
	}
    }

    FUNC3(FUNC2(ep->tterm.term_names));
    _nc_curr_line = (int) ep->startline;
    FUNC4(&ep->tterm);
}