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
struct TYPE_6__ {scalar_t__ Status; } ;
typedef  TYPE_1__ t_PXENV_UNDI_CLOSE ;
struct netif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PXENV_UNDI_CLOSE ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(struct netif *nif)
{
	t_PXENV_UNDI_CLOSE *undi_close_p;

	undi_close_p = FUNC0(sizeof(*undi_close_p));
	if (undi_close_p != NULL) {
		FUNC2(undi_close_p, sizeof(*undi_close_p));
		FUNC4(PXENV_UNDI_CLOSE, undi_close_p);
		if (undi_close_p->Status != 0)
			FUNC3("undi close failed: %x\n", undi_close_p->Status);
		FUNC1(undi_close_p, sizeof(*undi_close_p));
	}
}