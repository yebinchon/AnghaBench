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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* DFLT_MSGVERB ; 
 long MM_CONSOLE ; 
 int MM_NOCON ; 
 int MM_NOTOK ; 
 int MM_OK ; 
 long MM_PRINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (char*,long,char const*,int,char const*,char const*,char const*) ; 
 int /*<<< orphan*/ * stderr ; 
 char* FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*) ; 

int
FUNC9(long class, const char *label, int sev, const char *text,
    const char *action, const char *tag)
{
	FILE *fp;
	char *env, *msgverb, *output;

	if (class & MM_PRINT) {
		if ((env = FUNC4("MSGVERB")) != NULL && *env != '\0' &&
		    FUNC7(env) <= FUNC7(DFLT_MSGVERB)) {
			if ((msgverb = FUNC6(env)) == NULL)
				return (MM_NOTOK);
			else if (FUNC8(msgverb) == 0) {
				FUNC3(msgverb);
				goto def;
			}
		} else {
def:
			if ((msgverb = FUNC6(DFLT_MSGVERB)) == NULL)
				return (MM_NOTOK);
		}
		output = FUNC5(msgverb, class, label, sev, text, action,
		    tag);
		if (output == NULL) {
			FUNC3(msgverb);
			return (MM_NOTOK);
		}
		if (*output != '\0')
			FUNC2(stderr, "%s", output);
		FUNC3(msgverb);
		FUNC3(output);
	}
	if (class & MM_CONSOLE) {
		output = FUNC5(DFLT_MSGVERB, class, label, sev, text,
		    action, tag);
		if (output == NULL)
			return (MM_NOCON);
		if (*output != '\0') {
			if ((fp = FUNC1("/dev/console", "ae")) == NULL) {
				FUNC3(output);
				return (MM_NOCON);
			}
			FUNC2(fp, "%s", output);
			FUNC0(fp);
		}
		FUNC3(output);
	}
	return (MM_OK);
}