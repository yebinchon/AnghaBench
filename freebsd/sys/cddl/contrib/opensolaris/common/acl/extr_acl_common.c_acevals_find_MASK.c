#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  avl_tree_t ;
typedef  int /*<<< orphan*/  avl_index_t ;
struct TYPE_9__ {int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ acevals_t ;
struct TYPE_10__ {int /*<<< orphan*/  a_who; } ;
typedef  TYPE_2__ ace_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (void**,int) ; 

__attribute__((used)) static acevals_t *
FUNC4(ace_t *ace, avl_tree_t *avl, int *num)
{
	acevals_t key, *rc;
	avl_index_t where;

	key.key = ace->a_who;
	rc = FUNC1(avl, &key, &where);
	if (rc != NULL)
		return (rc);

	/* this memory is freed by ln_ace_to_aent()->ace_list_free() */
	if (FUNC3((void **)&rc, sizeof (acevals_t)) != 0)
		return (NULL);

	FUNC0(rc, ace->a_who);
	FUNC2(avl, rc, where);
	(*num)++;

	return (rc);
}