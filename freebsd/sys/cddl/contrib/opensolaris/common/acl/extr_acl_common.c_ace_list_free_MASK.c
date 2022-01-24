#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  group; int /*<<< orphan*/  user; } ;
typedef  TYPE_1__ acevals_t ;
typedef  TYPE_1__ ace_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC3(ace_list_t *al)
{
	acevals_t *node;
	void *cookie;

	if (al == NULL)
		return;

	cookie = NULL;
	while ((node = FUNC1(&al->user, &cookie)) != NULL)
		FUNC2(node, sizeof (acevals_t));
	cookie = NULL;
	while ((node = FUNC1(&al->group, &cookie)) != NULL)
		FUNC2(node, sizeof (acevals_t));

	FUNC0(&al->user);
	FUNC0(&al->group);

	/* free the container itself */
	FUNC2(al, sizeof (ace_list_t));
}