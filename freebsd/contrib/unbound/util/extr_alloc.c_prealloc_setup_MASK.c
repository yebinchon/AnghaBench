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
struct alloc_cache {int /*<<< orphan*/  num_quar; int /*<<< orphan*/ * quar; } ;
typedef  int /*<<< orphan*/  alloc_special_type ;

/* Variables and functions */
 int ALLOC_SPECIAL_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(struct alloc_cache* alloc)
{
	alloc_special_type* p;
	int i;
	for(i=0; i<ALLOC_SPECIAL_MAX; i++) {
		if(!(p = (alloc_special_type*)FUNC3(
			sizeof(alloc_special_type)))) {
			FUNC2("prealloc: out of memory");
			return;
		}
		FUNC1(p);
		FUNC0(p, alloc->quar);
		alloc->quar = p;
		alloc->num_quar++;
	}
}