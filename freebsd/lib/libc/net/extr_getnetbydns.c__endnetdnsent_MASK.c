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
typedef  TYPE_1__* res_state ;
struct TYPE_4__ {int options; } ;

/* Variables and functions */
 int RES_STAYOPEN ; 
 int RES_USEVC ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void
FUNC2(void)
{
	res_state statp;

	statp = FUNC0();
	statp->options &= ~(RES_STAYOPEN | RES_USEVC);
	FUNC1(statp);
}