#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  ntype; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
 int /*<<< orphan*/  NSTAT ; 
 TYPE_1__* FUNC0 (int,TYPE_1__*,TYPE_1__*) ; 

Node *FUNC1(int a, Node *b, Node *c)
{
	Node *x;

	x = FUNC0(a,b,c);
	x->ntype = NSTAT;
	return(x);
}