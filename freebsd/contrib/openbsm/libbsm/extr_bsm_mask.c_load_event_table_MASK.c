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
struct audit_event_map {int /*<<< orphan*/  ev; } ;
struct au_event_ent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct audit_event_map*,int /*<<< orphan*/ ) ; 
 struct audit_event_map* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct audit_event_map*) ; 
 int /*<<< orphan*/  ev_cache ; 
 int /*<<< orphan*/  ev_list ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct au_event_ent* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int
FUNC7(void)
{
	struct audit_event_map *aemp;
	struct au_event_ent *ep;

	/*
	 * XXX: Would assert 'mutex'.
	 * Loading of the cache happens only once; dont check if cache is
	 * already loaded.
	 */
	FUNC0(&ev_cache);
	FUNC6();	/* Rewind to beginning of entries. */
	do {
		aemp = FUNC2();
		if (aemp == NULL) {
			FUNC4();
			return (-1);
		}
		ep = FUNC5(&aemp->ev);
		if (ep != NULL)
			FUNC1(&ev_cache, aemp, ev_list);
		else
			FUNC3(aemp);
	} while (ep != NULL);
	return (1);
}