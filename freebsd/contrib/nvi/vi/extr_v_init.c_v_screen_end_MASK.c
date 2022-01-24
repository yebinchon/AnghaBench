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
struct TYPE_8__ {struct TYPE_8__* ps; struct TYPE_8__* mcs; struct TYPE_8__* rep; struct TYPE_8__* keyw; } ;
typedef  TYPE_1__ VI_PRIVATE ;
struct TYPE_9__ {int /*<<< orphan*/ * vi_private; } ;
typedef  TYPE_2__ SCR ;

/* Variables and functions */
 TYPE_1__* HMAP ; 
 TYPE_1__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

int
FUNC2(SCR *sp)
{
	VI_PRIVATE *vip;

	if ((vip = FUNC0(sp)) == NULL)
		return (0);
	if (vip->keyw != NULL)
		FUNC1(vip->keyw);
	if (vip->rep != NULL)
		FUNC1(vip->rep);
	if (vip->mcs != NULL)
		FUNC1(vip->mcs);
	if (vip->ps != NULL)
		FUNC1(vip->ps);

	if (HMAP != NULL)
		FUNC1(HMAP);

	FUNC1(vip);
	sp->vi_private = NULL;

	return (0);
}