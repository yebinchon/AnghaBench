#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* ptr; struct TYPE_6__* next; } ;
struct TYPE_5__ {size_t sz; TYPE_2__** tab; } ;
typedef  TYPE_1__ Hashtab ;
typedef  TYPE_2__ Hashentry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (void*,void*) ; 

void
FUNC2(Hashtab * htab, int (*func) (void *ptr, void *arg),
	       void *arg)
{
    Hashentry **h, *g;

    FUNC0(htab);

    for (h = htab->tab; h < &htab->tab[htab->sz]; ++h)
	for (g = *h; g; g = g->next)
	    if ((*func) (g->ptr, arg))
		return;
}