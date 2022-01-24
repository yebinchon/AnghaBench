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
struct au_event_ent {scalar_t__ ae_number; } ;
typedef  scalar_t__ au_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_EVENT_FILE ; 
 int /*<<< orphan*/  AU_LINE_MAX ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,struct au_event_ent*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * fp ; 
 int /*<<< orphan*/  linestr ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static struct au_event_ent *
FUNC5(struct au_event_ent *e, au_event_t event_number)
{
	char *nl;

	/* Rewind to beginning of the file. */
	FUNC3();

	if ((fp == NULL) && ((fp = FUNC2(AUDIT_EVENT_FILE, "r")) == NULL))
		return (NULL);

	while (FUNC1(linestr, AU_LINE_MAX, fp) != NULL) {
		/* Remove new lines. */
		if ((nl = FUNC4(linestr, '\n')) != NULL)
			*nl = '\0';

		if (FUNC0(linestr, e) != NULL) {
			if (event_number == e->ae_number)
				return (e);
		}
	}

	return (NULL);
}