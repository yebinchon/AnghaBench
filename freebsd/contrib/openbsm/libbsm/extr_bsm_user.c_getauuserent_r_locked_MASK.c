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
struct au_user_ent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_USER_FILE ; 
 int /*<<< orphan*/  AU_LINE_MAX ; 
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * fp ; 
 char* linestr ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/ * FUNC3 (char*,struct au_user_ent*) ; 

__attribute__((used)) static struct au_user_ent *
FUNC4(struct au_user_ent *u)
{
	char *nl;

	if ((fp == NULL) && ((fp = FUNC1(AUDIT_USER_FILE, "r")) == NULL))
		return (NULL);

	while (1) {
		if (FUNC0(linestr, AU_LINE_MAX, fp) == NULL)
			return (NULL);

		/* Remove new lines. */
		if ((nl = FUNC2(linestr, '\n')) != NULL)
			*nl = '\0';

		/* Skip comments. */
		if (linestr[0] == '#')
			continue;

		/* Get the next structure. */
		if (FUNC3(linestr, u) == NULL)
			return (NULL);
		break;
	}

	return (u);
}