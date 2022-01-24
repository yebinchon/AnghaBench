#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct symtab {scalar_t__ nsyms; int /*<<< orphan*/  stridx; int /*<<< orphan*/  data; } ;
struct proc_handle {int dummy; } ;
struct TYPE_9__ {char const* pr_mapname; scalar_t__ pr_vaddr; } ;
struct map_info {TYPE_2__ map; struct file_info* file; } ;
struct TYPE_8__ {scalar_t__ e_type; } ;
struct file_info {TYPE_1__ ehdr; int /*<<< orphan*/  elf; struct symtab dynsymtab; struct symtab symtab; } ;
typedef  int (* proc_sym_f ) (void*,TYPE_3__*,char const*) ;
struct TYPE_10__ {int /*<<< orphan*/  st_value; int /*<<< orphan*/  st_name; int /*<<< orphan*/  st_info; } ;
typedef  TYPE_3__ GElf_Sym ;

/* Variables and functions */
 int BIND_GLOBAL ; 
 int BIND_LOCAL ; 
 int BIND_WEAK ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ ET_DYN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int PR_SYMTAB ; 
 scalar_t__ STB_GLOBAL ; 
 scalar_t__ STB_LOCAL ; 
 scalar_t__ STB_WEAK ; 
 scalar_t__ STT_FILE ; 
 scalar_t__ STT_FUNC ; 
 scalar_t__ STT_NOTYPE ; 
 scalar_t__ STT_OBJECT ; 
 scalar_t__ STT_SECTION ; 
 int TYPE_FILE ; 
 int TYPE_FUNC ; 
 int TYPE_NOTYPE ; 
 int TYPE_OBJECT ; 
 int TYPE_SECTION ; 
 struct map_info* FUNC3 (struct proc_handle*,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int,TYPE_3__*) ; 
 scalar_t__ FUNC6 (struct map_info*) ; 
 int FUNC7 (void*,TYPE_3__*,char const*) ; 

int
FUNC8(struct proc_handle *p, const char *object, int which,
    int mask, proc_sym_f *func, void *cd)
{
	GElf_Sym sym;
	struct file_info *file;
	struct map_info *mapping;
	struct symtab *symtab;
	const char *s;
	int error, i;

	if ((mapping = FUNC3(p, object)) == NULL) {
		FUNC0("ERROR: proc_name2map failed to resolve %s", object);
		return (-1);
	}
	if (FUNC6(mapping) != 0) {
		FUNC0("ERROR: failed to open object %s",
		    mapping->map.pr_mapname);
		return (-1);
	}

	file = mapping->file;
	symtab = which == PR_SYMTAB ? &file->symtab : &file->dynsymtab;
	if (symtab->nsyms == 0)
		return (-1);

	error = 0;
	for (i = 0; FUNC5(symtab->data, i, &sym) != NULL; i++) {
		if (FUNC1(sym.st_info) == STB_LOCAL &&
		    (mask & BIND_LOCAL) == 0)
			continue;
		if (FUNC1(sym.st_info) == STB_GLOBAL &&
		    (mask & BIND_GLOBAL) == 0)
			continue;
		if (FUNC1(sym.st_info) == STB_WEAK &&
		    (mask & BIND_WEAK) == 0)
			continue;
		if (FUNC2(sym.st_info) == STT_NOTYPE &&
		    (mask & TYPE_NOTYPE) == 0)
			continue;
		if (FUNC2(sym.st_info) == STT_OBJECT &&
		    (mask & TYPE_OBJECT) == 0)
			continue;
		if (FUNC2(sym.st_info) == STT_FUNC &&
		    (mask & TYPE_FUNC) == 0)
			continue;
		if (FUNC2(sym.st_info) == STT_SECTION &&
		    (mask & TYPE_SECTION) == 0)
			continue;
		if (FUNC2(sym.st_info) == STT_FILE &&
		    (mask & TYPE_FILE) == 0)
			continue;
		s = FUNC4(file->elf, symtab->stridx, sym.st_name);
		if (file->ehdr.e_type == ET_DYN)
			sym.st_value += mapping->map.pr_vaddr;
		if ((error = (*func)(cd, &sym, s)) != 0)
			break;
	}
	return (error);
}