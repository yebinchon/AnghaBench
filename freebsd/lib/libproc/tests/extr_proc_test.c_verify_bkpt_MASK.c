#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  u_long ;
struct proc_handle {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  pr_mapname; } ;
typedef  TYPE_1__ prmap_t ;
struct TYPE_9__ {scalar_t__ st_value; } ;
typedef  TYPE_2__ GElf_Sym ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PS_STOP ; 
 int /*<<< orphan*/  REG_PC ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_2__*,int) ; 
 TYPE_1__* FUNC9 (struct proc_handle*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct proc_handle*,int /*<<< orphan*/ ,char*,size_t,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct proc_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct proc_handle*) ; 
 int /*<<< orphan*/  FUNC14 (char const*,char*) ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (char const*) ; 
 int /*<<< orphan*/  target_prog_file ; 

__attribute__((used)) static void
FUNC17(struct proc_handle *phdl, GElf_Sym *sym, const char *symname,
    const char *mapname)
{
	char *name, *mapname_copy, *mapbname;
	GElf_Sym tsym;
	prmap_t *map;
	size_t namesz;
	u_long addr;
	int error, state;

	state = FUNC13(phdl);
	FUNC3(state, PS_STOP, "process has state %d", state);

	/* Get the program counter and decrement it. */
	error = FUNC12(phdl, REG_PC, &addr);
	FUNC3(error, 0, "failed to obtain PC for '%s'",
	    target_prog_file);
	FUNC11(&addr);

	/*
	 * Make sure the PC matches the expected value obtained from the symbol
	 * definition we looked up earlier.
	 */
	FUNC0(addr, sym->st_value,
	    "program counter 0x%lx doesn't match expected value 0x%jx",
	    addr, (uintmax_t)sym->st_value);

	/*
	 * Ensure we can look up the r_debug_state symbol using its starting
	 * address and that the resulting symbol matches the one we found using
	 * a name lookup.
	 */
	namesz = FUNC16(symname) + 1;
	name = FUNC7(namesz);
	FUNC1(name != NULL);

	error = FUNC10(phdl, addr, name, namesz, &tsym);
	FUNC3(error, 0, "failed to look up symbol at 0x%lx", addr);
	FUNC2(FUNC8(sym, &tsym, sizeof(*sym)), 0);
	FUNC2(FUNC14(symname, name), 0);
	FUNC6(name);

	map = FUNC9(phdl, addr);
	FUNC4(map != NULL, "failed to look up map for address 0x%lx",
	    addr);
	mapname_copy = FUNC15(map->pr_mapname);
	mapbname = FUNC5(mapname_copy);
	FUNC3(FUNC14(mapname, mapbname), 0,
	    "expected map name '%s' doesn't match '%s'", mapname, mapbname);
	FUNC6(mapname_copy);
}