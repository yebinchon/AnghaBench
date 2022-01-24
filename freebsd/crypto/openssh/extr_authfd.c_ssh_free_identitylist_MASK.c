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
struct ssh_identitylist {size_t nkeys; struct ssh_identitylist** comments; int /*<<< orphan*/ * keys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ssh_identitylist*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(struct ssh_identitylist *idl)
{
	size_t i;

	if (idl == NULL)
		return;
	for (i = 0; i < idl->nkeys; i++) {
		if (idl->keys != NULL)
			FUNC1(idl->keys[i]);
		if (idl->comments != NULL)
			FUNC0(idl->comments[i]);
	}
	FUNC0(idl);
}