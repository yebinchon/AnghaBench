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
struct frame_unwind {int dummy; } ;
struct frame_info {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ PMAP_TRM_MIN_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct frame_info*) ; 
 struct frame_unwind const kgdb_trgt_dblfault_unwind ; 
 struct frame_unwind const kgdb_trgt_trapframe_unwind ; 
 scalar_t__ FUNC2 (char*,char*) ; 

const struct frame_unwind *
FUNC3(struct frame_info *next_frame)
{
	char *pname;
	CORE_ADDR pc;

	pc = FUNC1(next_frame);
	if (pc >= PMAP_TRM_MIN_ADDRESS)
		return (&kgdb_trgt_trapframe_unwind);
	pname = NULL;
	FUNC0(pc, &pname, NULL, NULL);
	if (pname == NULL)
		return (NULL);
	if (FUNC2(pname, "dblfault_handler") == 0)
		return (&kgdb_trgt_dblfault_unwind);
	if (FUNC2(pname, "calltrap") == 0 ||
	    (pname[0] == 'X' && pname[1] != '_'))
		return (&kgdb_trgt_trapframe_unwind);
	/* printf("%s: %llx =%s\n", __func__, pc, pname); */
	return (NULL);
}