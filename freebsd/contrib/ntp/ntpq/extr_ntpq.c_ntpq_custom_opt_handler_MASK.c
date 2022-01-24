#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tOptions ;
struct TYPE_3__ {int optValue; char* pzLastArg; } ;
typedef  TYPE_1__ tOptDesc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC3(
	tOptions *pOptions,
	tOptDesc *pOptDesc
	)
{
	switch (pOptDesc->optValue) {

	default:
		FUNC2(stderr,
			"ntpq_custom_opt_handler unexpected option '%c' (%d)\n",
			pOptDesc->optValue, pOptDesc->optValue);
		FUNC1(1);

	case 'c':
		FUNC0(pOptDesc->pzLastArg);
		break;

	case 'p':
		FUNC0("peers");
		break;
	}
}