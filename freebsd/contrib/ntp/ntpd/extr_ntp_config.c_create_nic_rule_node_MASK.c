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
struct TYPE_4__ {int match_class; char* if_name; int action; } ;
typedef  TYPE_1__ nic_rule_node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int) ; 

nic_rule_node *
FUNC2(
	int match_class,
	char *if_name,	/* interface name or numeric address */
	int action
	)
{
	nic_rule_node *my_node;

	FUNC0(match_class != 0 || if_name != NULL);

	my_node = FUNC1(sizeof(*my_node));
	my_node->match_class = match_class;
	my_node->if_name = if_name;
	my_node->action = action;

	return my_node;
}