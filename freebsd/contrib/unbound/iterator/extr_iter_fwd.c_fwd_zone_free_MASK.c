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
struct iter_forward_zone {struct iter_forward_zone* name; int /*<<< orphan*/  dp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iter_forward_zone*) ; 

__attribute__((used)) static void FUNC2(struct iter_forward_zone* n)
{
	if(!n) return;
	FUNC0(n->dp);
	FUNC1(n->name);
	FUNC1(n);
}