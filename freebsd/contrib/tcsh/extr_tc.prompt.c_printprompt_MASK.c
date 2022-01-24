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
typedef  int /*<<< orphan*/  time_t ;
typedef  char Char ;

/* Variables and functions */
 int /*<<< orphan*/  FMT_PROMPT ; 
 char* Prompt ; 
 char* RPrompt ; 
 int /*<<< orphan*/  STRprompt ; 
 int /*<<< orphan*/  STRprompt2 ; 
 int /*<<< orphan*/  STRprompt3 ; 
 int /*<<< orphan*/  STRrprompt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  editing ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void
FUNC8(int promptno, const char *str)
{
    static  const Char *ocp = NULL;
    static  const char *ostr = NULL;
    time_t  lclock = FUNC4(NULL);
    const Char *cp;

    switch (promptno) {
    default:
    case 0:
	cp = FUNC6(STRprompt);
	break;
    case 1:
	cp = FUNC6(STRprompt2);
	break;
    case 2:
	cp = FUNC6(STRprompt3);
	break;
    case 3:
	if (ocp != NULL) {
	    cp = ocp;
	    str = ostr;
	}
	else 
	    cp = FUNC6(STRprompt);
	break;
    }

    if (promptno < 2) {
	ocp = cp;
	ostr = str;
    }

    FUNC7(Prompt);
    Prompt = NULL;
    Prompt = FUNC5(FMT_PROMPT, cp, str, lclock, NULL);
    if (!editing) {
	for (cp = Prompt; *cp ; )
	    (void) FUNC3(*cp++);
	FUNC0(0);
	FUNC1();
    }

    FUNC7(RPrompt);
    RPrompt = NULL;
    if (promptno == 0) {	/* determine rprompt if using main prompt */
	cp = FUNC6(STRrprompt);
	RPrompt = FUNC5(FMT_PROMPT, cp, NULL, lclock, NULL);
				/* if not editing, put rprompt after prompt */
	if (!editing && RPrompt[0] != '\0') {
	    for (cp = RPrompt; *cp ; )
		(void) FUNC3(*cp++);
	    FUNC0(0);
	    FUNC2(' ');
	    FUNC1();
	}
    }
}