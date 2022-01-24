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
struct heim_base_mem {int ref_cnt; char const* name; int /*<<< orphan*/  dealloc; int /*<<< orphan*/ * isa; } ;
typedef  int /*<<< orphan*/  heim_type_dealloc ;

/* Variables and functions */
 void* FUNC0 (struct heim_base_mem*) ; 
 struct heim_base_mem* FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  memory_object ; 

void *
FUNC2(size_t size, const char *name, heim_type_dealloc dealloc)
{
    /* XXX use posix_memalign */

    struct heim_base_mem *p = FUNC1(1, size + sizeof(*p));
    if (p == NULL)
	return NULL;
    p->isa = &memory_object;
    p->ref_cnt = 1;
    p->name = name;
    p->dealloc = dealloc;
    return FUNC0(p);
}