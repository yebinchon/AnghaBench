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
struct TYPE_2__ {scalar_t__ nentries; int /*<<< orphan*/  idlist; } ;
typedef  int /*<<< orphan*/  SocketEntry ;
typedef  int /*<<< orphan*/  Identity ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* idtab ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC4(SocketEntry *e)
{
	Identity *id;

	/* Loop over all identities and clear the keys. */
	for (id = FUNC0(&idtab->idlist); id;
	    id = FUNC0(&idtab->idlist)) {
		FUNC1(&idtab->idlist, id, next);
		FUNC2(id);
	}

	/* Mark that there are no identities. */
	idtab->nentries = 0;

	/* Send success. */
	FUNC3(e, 1);
}