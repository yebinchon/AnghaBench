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
struct au_event_ent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_EVENT_FILE ; 
 int /*<<< orphan*/  AU_LINE_MAX ; 
 int /*<<< orphan*/ * FUNC0 (char*,struct au_event_ent*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * fp ; 
 char* linestr ; 
 char* FUNC3 (char*,char) ; 

__attribute__((used)) static struct au_event_ent *
FUNC4(struct au_event_ent *e)
{
	char *nl;

	if ((fp == NULL) && ((fp = FUNC2(AUDIT_EVENT_FILE, "r")) == NULL))
		return (NULL);

	while (1) {
		if (FUNC1(linestr, AU_LINE_MAX, fp) == NULL)
			return (NULL);

		/* Remove new lines. */
		if ((nl = FUNC3(linestr, '\n')) != NULL)
			*nl = '\0';

		/* Skip comments. */
		if (linestr[0] == '#')
			continue;

		/* Get the next event structure. */
		if (FUNC0(linestr, e) == NULL)
			return (NULL);
		break;
	}

	return (e);
}