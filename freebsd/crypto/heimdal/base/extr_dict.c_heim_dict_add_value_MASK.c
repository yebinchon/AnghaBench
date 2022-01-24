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
struct hashentry {struct hashentry* next; struct hashentry** prev; void* value; void* key; } ;
typedef  int /*<<< orphan*/  heim_object_t ;
typedef  TYPE_1__* heim_dict_t ;
struct TYPE_4__ {unsigned long size; struct hashentry** tab; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct hashentry* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 struct hashentry* FUNC4 (int) ; 

int
FUNC5(heim_dict_t dict, heim_object_t key, heim_object_t value)
{
    struct hashentry **tabptr, *h;

    h = FUNC0(dict, key);
    if (h) {
	FUNC2(h->value);
	h->value = FUNC3(value);
    } else {
	unsigned long v;

	h = FUNC4(sizeof(*h));
	if (h == NULL)
	    return ENOMEM;

	h->key = FUNC3(key);
	h->value = FUNC3(value);

	v = FUNC1(key);

	tabptr = &dict->tab[v % dict->size];
	h->next = *tabptr;
	*tabptr = h;
	h->prev = tabptr;
	if (h->next)
	    h->next->prev = &h->next;
    }

    return 0;
}