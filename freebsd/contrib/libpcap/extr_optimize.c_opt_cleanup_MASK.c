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
struct TYPE_3__ {scalar_t__ blocks; scalar_t__ levels; scalar_t__ space; scalar_t__ edges; scalar_t__ vmap; scalar_t__ vnode_base; } ;
typedef  TYPE_1__ opt_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 

__attribute__((used)) static void
FUNC1(opt_state_t *opt_state)
{
	FUNC0((void *)opt_state->vnode_base);
	FUNC0((void *)opt_state->vmap);
	FUNC0((void *)opt_state->edges);
	FUNC0((void *)opt_state->space);
	FUNC0((void *)opt_state->levels);
	FUNC0((void *)opt_state->blocks);
}