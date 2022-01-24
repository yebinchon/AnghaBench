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
struct TYPE_4__ {struct TYPE_4__* next; int /*<<< orphan*/  s; int /*<<< orphan*/ * node; } ;
typedef  TYPE_1__ strnodelist ;
typedef  int /*<<< orphan*/  filenode ;

/* Variables and functions */
 TYPE_1__* bl_list ; 
 TYPE_1__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(filenode *fnode, char *s)
{
	strnodelist *bf_ent;

	bf_ent = FUNC0(sizeof *bf_ent + FUNC2(s));
	bf_ent->node = fnode;
	FUNC1(bf_ent->s, s);
	bf_ent->next = bl_list;
	bl_list = bf_ent;
}