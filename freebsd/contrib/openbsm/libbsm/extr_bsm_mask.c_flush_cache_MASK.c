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
struct audit_event_map {int dummy; } ;

/* Variables and functions */
 struct audit_event_map* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_event_map*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_event_map*) ; 
 int /*<<< orphan*/  ev_cache ; 
 int /*<<< orphan*/  ev_list ; 

__attribute__((used)) static void
FUNC3(void)
{
	struct audit_event_map *aemp;

	/* XXX: Would assert 'mutex'. */

	while ((aemp = FUNC0(&ev_cache)) != NULL) {
		FUNC1(aemp, ev_list);
		FUNC2(aemp);
	}
}