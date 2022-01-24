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
struct TYPE_5__ {char* var; char* val; scalar_t__ isdefault; struct TYPE_5__* link; } ;
typedef  TYPE_1__ setvar_node ;
struct TYPE_6__ {int /*<<< orphan*/  setvar; } ;
typedef  TYPE_2__ config_tree ;

/* Variables and functions */
 int /*<<< orphan*/  DEF ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,char*,char*) ; 
 size_t FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(
	config_tree *ptree
	)
{
	setvar_node *my_node;
	size_t	varlen, vallen, octets;
	char *	str;

	str = NULL;
	my_node = FUNC0(ptree->setvar);
	for (; my_node != NULL; my_node = my_node->link) {
		varlen = FUNC5(my_node->var);
		vallen = FUNC5(my_node->val);
		octets = varlen + vallen + 1 + 1;
		str = FUNC1(str, octets);
		FUNC4(str, octets, "%s=%s", my_node->var,
			 my_node->val);
		FUNC3(str, octets, (my_node->isdefault)
						? DEF
						: 0);
	}
	if (str != NULL)
		FUNC2(str);
}