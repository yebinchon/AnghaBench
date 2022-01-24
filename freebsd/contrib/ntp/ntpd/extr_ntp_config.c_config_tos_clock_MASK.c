#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  orphan_cmds; } ;
typedef  TYPE_2__ config_tree ;
struct TYPE_6__ {scalar_t__ i; } ;
struct TYPE_8__ {int attr; TYPE_1__ value; struct TYPE_8__* link; } ;
typedef  TYPE_3__ attr_val ;

/* Variables and functions */
 int FALSE ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NTP_TO_UNIX_DAYS ; 
 int TRUE ; 
#define  T_Basedate 128 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static int/*BOOL*/
FUNC4(
	config_tree *ptree
	)
{
	int		ret;
	attr_val *	tos;

	ret = FALSE;
	tos = FUNC0(ptree->orphan_cmds);
	for (; tos != NULL; tos = tos->link) {
		switch(tos->attr) {

		default:
			break;

		case T_Basedate:
			FUNC3(tos->value.i);
			ret = TRUE;
			break;
		}
	}

	if (FUNC2() <= NTP_TO_UNIX_DAYS)
		FUNC3(FUNC1() - 11);
	    
	return ret;
}