#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * module; int /*<<< orphan*/  optv; int /*<<< orphan*/  optc; struct TYPE_4__* next; } ;
typedef  TYPE_1__ pam_chain_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(pam_chain_t *chain)
{

	if (chain == NULL)
		return;
	FUNC3(chain->next);
	chain->next = NULL;
	FUNC1(chain->optc, chain->optv);
	FUNC2(chain->module);
	chain->module = NULL;
	FUNC0(chain);
}