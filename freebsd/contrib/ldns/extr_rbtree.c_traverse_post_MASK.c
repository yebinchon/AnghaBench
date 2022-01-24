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
struct TYPE_6__ {struct TYPE_6__* right; struct TYPE_6__* left; } ;
typedef  TYPE_1__ ldns_rbnode_t ;

/* Variables and functions */
 TYPE_1__* LDNS_RBTREE_NULL ; 
 void FUNC0 (TYPE_1__*,void*) ; 

__attribute__((used)) static void 
FUNC1(void (*func)(ldns_rbnode_t*, void*), void* arg, 
	ldns_rbnode_t* node)
{
	if(!node || node == LDNS_RBTREE_NULL)
		return;
	/* recurse */
	FUNC1(func, arg, node->left);
	FUNC1(func, arg, node->right);
	/* call user func */
	(*func)(node, arg);
}