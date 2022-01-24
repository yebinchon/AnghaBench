#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int i; struct TYPE_5__* link; } ;
typedef  TYPE_1__ int_node ;
struct TYPE_6__ {int /*<<< orphan*/  reset_counters; } ;
typedef  TYPE_2__ config_tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
#define  T_Allpeers 134 
#define  T_Auth 133 
#define  T_Ctl 132 
#define  T_Io 131 
#define  T_Mem 130 
#define  T_Sys 129 
#define  T_Timer 128 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void
FUNC10(
	config_tree *ptree
	)
{
	int_node *counter_set;

	for (counter_set = FUNC1(ptree->reset_counters);
	     counter_set != NULL;
	     counter_set = counter_set->link) {
		switch (counter_set->i) {
		default:
			FUNC0(1, ("config_reset_counters %s (%d) invalid\n",
				    FUNC4(counter_set->i), counter_set->i));
			break;

		case T_Allpeers:
			FUNC5();
			break;

		case T_Auth:
			FUNC8();
			break;

		case T_Ctl:
			FUNC2();
			break;

		case T_Io:
			FUNC3();
			break;

		case T_Mem:
			FUNC6();
			break;

		case T_Sys:
			FUNC7();
			break;

		case T_Timer:
			FUNC9();
			break;
		}
	}
}