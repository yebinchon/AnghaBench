#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  r_info; scalar_t__ r_offset; } ;
struct TYPE_14__ {int st_name; size_t st_size; scalar_t__ st_value; } ;
struct TYPE_13__ {int relasize; char* strtab; scalar_t__ relocbase; int /*<<< orphan*/  path; TYPE_3__* symtab; TYPE_4__* rela; int /*<<< orphan*/  mainprog; } ;
struct TYPE_12__ {TYPE_2__ const* defobj_out; TYPE_3__* sym_out; int /*<<< orphan*/  flags; int /*<<< orphan*/  ventry; } ;
typedef  TYPE_1__ SymLook ;
typedef  TYPE_2__ const Obj_Entry ;
typedef  TYPE_3__ Elf_Sym ;
typedef  TYPE_4__ Elf_Rela ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ R_AARCH64_COPY ; 
 int /*<<< orphan*/  SYMLOOK_EARLY ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__ const*,int) ; 
 TYPE_2__ const* FUNC5 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC6 (void*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char const*) ; 
 int FUNC8 (TYPE_1__*,TYPE_2__ const*) ; 

int
FUNC9(Obj_Entry *dstobj)
{
	const Obj_Entry *srcobj, *defobj;
	const Elf_Rela *relalim;
	const Elf_Rela *rela;
	const Elf_Sym *srcsym;
	const Elf_Sym *dstsym;
	const void *srcaddr;
	const char *name;
	void *dstaddr;
	SymLook req;
	size_t size;
	int res;

	/*
	 * COPY relocs are invalid outside of the main program
	 */
	FUNC3(dstobj->mainprog);

	relalim = (const Elf_Rela *)((const char *)dstobj->rela +
	    dstobj->relasize);
	for (rela = dstobj->rela; rela < relalim; rela++) {
		if (FUNC1(rela->r_info) != R_AARCH64_COPY)
			continue;

		dstaddr = (void *)(dstobj->relocbase + rela->r_offset);
		dstsym = dstobj->symtab + FUNC0(rela->r_info);
		name = dstobj->strtab + dstsym->st_name;
		size = dstsym->st_size;

		FUNC7(&req, name);
		req.ventry = FUNC4(dstobj, FUNC0(rela->r_info));
		req.flags = SYMLOOK_EARLY;

		for (srcobj = FUNC5(dstobj); srcobj != NULL;
		     srcobj = FUNC5(srcobj)) {
			res = FUNC8(&req, srcobj);
			if (res == 0) {
				srcsym = req.sym_out;
				defobj = req.defobj_out;
				break;
			}
		}
		if (srcobj == NULL) {
			FUNC2("Undefined symbol \"%s\" referenced from "
			    "COPY relocation in %s", name, dstobj->path);
			return (-1);
		}

		srcaddr = (const void *)(defobj->relocbase + srcsym->st_value);
		FUNC6(dstaddr, srcaddr, size);
	}

	return (0);
}