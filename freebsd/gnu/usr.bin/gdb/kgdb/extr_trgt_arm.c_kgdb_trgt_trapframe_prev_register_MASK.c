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
struct kgdb_frame_cache {scalar_t__ sp; } ;
struct frame_info {int dummy; } ;
typedef  enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int ARM_PS_REGNUM ; 
 int MAX_REGISTER_SIZE ; 
 int /*<<< orphan*/  current_gdbarch ; 
 struct kgdb_frame_cache* FUNC0 (struct frame_info*,void**) ; 
 int* kgdb_trgt_frame_offset ; 
 int lval_memory ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int not_lval ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,void*,int) ; 

__attribute__((used)) static void
FUNC4(struct frame_info *next_frame,
    void **this_cache, int regnum, int *optimizedp, enum lval_type *lvalp,
    CORE_ADDR *addrp, int *realnump, void *valuep)
{
	char dummy_valuep[MAX_REGISTER_SIZE];
	struct kgdb_frame_cache *cache;
	int ofs, regsz;
	CORE_ADDR sp;

	regsz = FUNC2(current_gdbarch, regnum);

	if (valuep == NULL)
		valuep = dummy_valuep;
	FUNC1(valuep, 0, regsz);
	*optimizedp = 0;
	*addrp = 0;
	*lvalp = not_lval;
	*realnump = -1;

	ofs = (regnum >= 0 && regnum <= ARM_PS_REGNUM)
	    ? kgdb_trgt_frame_offset[regnum] : -1;
	if (ofs == -1)
		return;

	cache = FUNC0(next_frame, this_cache);
	sp = cache->sp;

	ofs = kgdb_trgt_frame_offset[regnum];
	*addrp = sp + ofs;
	*lvalp = lval_memory;
	FUNC3(*addrp, valuep, regsz);
}