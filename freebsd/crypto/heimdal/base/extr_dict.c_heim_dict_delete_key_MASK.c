#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hashentry {TYPE_1__** prev; TYPE_1__* next; int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  heim_object_t ;
typedef  int /*<<< orphan*/  heim_dict_t ;
struct TYPE_2__ {struct TYPE_2__** prev; } ;

/* Variables and functions */
 struct hashentry* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hashentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(heim_dict_t dict, heim_object_t key)
{
    struct hashentry *h = FUNC0(dict, key);

    if (h == NULL)
	return;

    FUNC2(h->key);
    FUNC2(h->value);

    if ((*(h->prev) = h->next) != NULL)
	h->next->prev = h->prev;

    FUNC1(h);
}