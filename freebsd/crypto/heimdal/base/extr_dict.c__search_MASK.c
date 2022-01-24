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
struct hashentry {int /*<<< orphan*/  key; struct hashentry* next; } ;
typedef  int /*<<< orphan*/  heim_object_t ;
typedef  TYPE_1__* heim_dict_t ;
struct TYPE_3__ {unsigned long size; struct hashentry** tab; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct hashentry *
FUNC2(heim_dict_t dict, heim_object_t ptr)
{
    unsigned long v = FUNC1(ptr);
    struct hashentry *p;

    for (p = dict->tab[v % dict->size]; p != NULL; p = p->next)
	if (FUNC0(ptr, p->key) == 0)
	    return p;

    return NULL;
}