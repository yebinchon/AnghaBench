#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_2__ {scalar_t__ macroset; } ;
struct roff_man {TYPE_1__ meta; scalar_t__ quick; } ;

/* Variables and functions */
 scalar_t__ MACROSET_MDOC ; 
 int /*<<< orphan*/  MANDOCERR_DATE_BAD ; 
 int /*<<< orphan*/  MANDOCERR_DATE_FUTURE ; 
 int /*<<< orphan*/  MANDOCERR_DATE_LEGACY ; 
 int /*<<< orphan*/  MANDOCERR_DATE_MISSING ; 
 int /*<<< orphan*/  MANDOCERR_DATE_NORM ; 
 scalar_t__ FUNC0 (scalar_t__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,char*,...) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (scalar_t__) ; 

char *
FUNC6(struct roff_man *man, char *in, int ln, int pos)
{
	char		*cp;
	time_t		 t;

	if (man->quick)
		return FUNC2(in == NULL ? "" : in);

	/* No date specified: use today's date. */

	if (in == NULL || *in == '\0')
		FUNC1(MANDOCERR_DATE_MISSING, ln, pos, NULL);
	if (in == NULL || *in == '\0' || FUNC3(in, "$" "Mdocdate$") == 0)
		return FUNC5(FUNC4(NULL));

	/* Valid mdoc(7) date format. */

	if (FUNC0(&t, "$" "Mdocdate: %b %d %Y $", in) ||
	    FUNC0(&t, "%b %d, %Y", in)) {
		cp = FUNC5(t);
		if (t > FUNC4(NULL) + 86400)
			FUNC1(MANDOCERR_DATE_FUTURE, ln, pos, "%s", cp);
		else if (*in != '$' && FUNC3(in, cp) != 0)
			FUNC1(MANDOCERR_DATE_NORM, ln, pos, "%s", cp);
		return cp;
	}

	/* In man(7), do not warn about the legacy format. */

	if (FUNC0(&t, "%Y-%m-%d", in) == 0)
		FUNC1(MANDOCERR_DATE_BAD, ln, pos, "%s", in);
	else if (t > FUNC4(NULL) + 86400)
		FUNC1(MANDOCERR_DATE_FUTURE, ln, pos, "%s", in);
	else if (man->meta.macroset == MACROSET_MDOC)
		FUNC1(MANDOCERR_DATE_LEGACY, ln, pos, "Dd %s", in);

	/* Use any non-mdoc(7) date verbatim. */

	return FUNC2(in);
}