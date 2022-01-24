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
struct au_mask {int /*<<< orphan*/  am_success; } ;
struct au_event_ent {int /*<<< orphan*/  ae_class; int /*<<< orphan*/  ae_number; int /*<<< orphan*/  ae_desc; int /*<<< orphan*/  ae_name; } ;

/* Variables and functions */
 scalar_t__ AU_EVENT_DESC_MAX ; 
 scalar_t__ AU_EVENT_NAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  eventdelim ; 
 scalar_t__ FUNC1 (char*,struct au_mask*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC3 (char*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ,char**) ; 

__attribute__((used)) static struct au_event_ent *
FUNC5(char *str, struct au_event_ent *e)
{
	char *evno, *evname, *evdesc, *evclass;
	struct au_mask evmask;
	char *last;

	evno = FUNC4(str, eventdelim, &last);
	evname = FUNC4(NULL, eventdelim, &last);
	evdesc = FUNC4(NULL, eventdelim, &last);
	evclass = FUNC4(NULL, eventdelim, &last);

	if ((evno == NULL) || (evname == NULL))
		return (NULL);

	if (FUNC3(evname) >= AU_EVENT_NAME_MAX)
		return (NULL);

	FUNC2(e->ae_name, evname, AU_EVENT_NAME_MAX);
	if (evdesc != NULL) {
		if (FUNC3(evdesc) >= AU_EVENT_DESC_MAX)
			return (NULL);
		FUNC2(e->ae_desc, evdesc, AU_EVENT_DESC_MAX);
	} else
		FUNC2(e->ae_desc, "", AU_EVENT_DESC_MAX);

	e->ae_number = FUNC0(evno);

	/*
	 * Find out the mask that corresponds to the given list of classes.
	 */
	if (evclass != NULL) {
		if (FUNC1(evclass, &evmask) != 0)
			e->ae_class = 0;
		else
			e->ae_class = evmask.am_success;
	} else
		e->ae_class = 0;

	return (e);
}