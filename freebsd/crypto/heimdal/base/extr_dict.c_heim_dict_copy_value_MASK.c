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
struct hashentry {int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/ * heim_object_t ;
typedef  int /*<<< orphan*/  heim_dict_t ;

/* Variables and functions */
 struct hashentry* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 

heim_object_t
FUNC2(heim_dict_t dict, heim_object_t key)
{
    struct hashentry *p;
    p = FUNC0(dict, key);
    if (p == NULL)
	return NULL;

    return FUNC1(p->value);
}