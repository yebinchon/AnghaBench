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
typedef  int uint32_t ;
struct slabhash {size_t size; int mask; struct lruhash** array; scalar_t__ shift; } ;
struct lruhash {int dummy; } ;
typedef  int /*<<< orphan*/  lruhash_sizefunc_type ;
typedef  int /*<<< orphan*/  lruhash_delkeyfunc_type ;
typedef  int /*<<< orphan*/  lruhash_deldatafunc_type ;
typedef  int /*<<< orphan*/  lruhash_compfunc_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct slabhash*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct lruhash* FUNC3 (size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct slabhash*) ; 

struct slabhash* FUNC5(size_t numtables, size_t start_size, 
	size_t maxmem, lruhash_sizefunc_type sizefunc, 
	lruhash_compfunc_type compfunc, lruhash_delkeyfunc_type delkeyfunc, 
	lruhash_deldatafunc_type deldatafunc, void* arg)
{
	size_t i;
	struct slabhash* sl = (struct slabhash*)FUNC0(1, 
		sizeof(struct slabhash));
	if(!sl) return NULL;
	sl->size = numtables;
	FUNC2(sl->size > 0);
	sl->array = (struct lruhash**)FUNC0(sl->size, sizeof(struct lruhash*));
	if(!sl->array) {
		FUNC1(sl);
		return NULL;
	}
	sl->mask = (uint32_t)(sl->size - 1);
	if(sl->mask == 0) {
		sl->shift = 0;
	} else {
		FUNC2( (sl->size & sl->mask) == 0 
			/* size must be power of 2 */ );
		sl->shift = 0;
		while(!(sl->mask & 0x80000000)) {
			sl->mask <<= 1;
			sl->shift ++;
		}
	}
	for(i=0; i<sl->size; i++) {
		sl->array[i] = FUNC3(start_size, maxmem / sl->size,
			sizefunc, compfunc, delkeyfunc, deldatafunc, arg);
		if(!sl->array[i]) {
			FUNC4(sl);
			return NULL;
		}
	}
	return sl;
}