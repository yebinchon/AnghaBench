#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_9__ {int /*<<< orphan*/  nentries; int /*<<< orphan*/  idlist; } ;
struct TYPE_8__ {scalar_t__ death; int /*<<< orphan*/  comment; } ;
typedef  TYPE_1__ Identity ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_2__* idtab ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static time_t
FUNC7(void)
{
	time_t deadline = 0, now = FUNC6();
	Identity *id, *nxt;

	for (id = FUNC1(&idtab->idlist); id; id = nxt) {
		nxt = FUNC2(id, next);
		if (id->death == 0)
			continue;
		if (now >= id->death) {
			FUNC4("expiring key '%s'", id->comment);
			FUNC3(&idtab->idlist, id, next);
			FUNC5(id);
			idtab->nentries--;
		} else
			deadline = (deadline == 0) ? id->death :
			    FUNC0(deadline, id->death);
	}
	if (deadline == 0 || deadline <= now)
		return 0;
	else
		return (deadline - now);
}