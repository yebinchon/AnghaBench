#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct roff_node {TYPE_3__* parent; } ;
struct TYPE_6__ {scalar_t__ tok; TYPE_2__* norm; } ;
struct TYPE_4__ {scalar_t__ quote_T; } ;
struct TYPE_5__ {TYPE_1__ Rs; } ;

/* Variables and functions */
 scalar_t__ MDOC_Rs ; 
 int /*<<< orphan*/  MD_spc ; 
 int /*<<< orphan*/  FUNC0 (struct roff_node*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  outflags ; 

__attribute__((used)) static void
FUNC3(struct roff_node *n)
{
	outflags &= ~MD_spc;
	if (n->parent->tok == MDOC_Rs && n->parent->norm->Rs.quote_T)
		FUNC2("\"");
	else
		FUNC1("*");
	FUNC0(n);
}