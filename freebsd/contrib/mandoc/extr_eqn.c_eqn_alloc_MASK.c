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
struct eqn_node {int /*<<< orphan*/  gsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  EQN_DEFSIZE ; 
 struct eqn_node* FUNC0 (int,int) ; 

struct eqn_node *
FUNC1(void)
{
	struct eqn_node *ep;

	ep = FUNC0(1, sizeof(*ep));
	ep->gsize = EQN_DEFSIZE;
	return ep;
}