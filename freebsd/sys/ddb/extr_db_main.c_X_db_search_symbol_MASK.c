#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* end; scalar_t__ start; int /*<<< orphan*/ * private; } ;
typedef  TYPE_1__ db_symtab_t ;
typedef  scalar_t__ db_strategy_t ;
typedef  scalar_t__ db_expr_t ;
typedef  scalar_t__ db_addr_t ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  scalar_t__ c_linker_sym_t ;
typedef  int /*<<< orphan*/ * c_db_sym_t ;
struct TYPE_5__ {scalar_t__ st_name; scalar_t__ st_shndx; scalar_t__ st_value; int /*<<< orphan*/  st_info; } ;
typedef  TYPE_2__ Elf_Sym ;

/* Variables and functions */
 scalar_t__ DB_STGY_ANY ; 
 scalar_t__ DB_STGY_PROC ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SHN_UNDEF ; 
 scalar_t__ STB_LOCAL ; 
 scalar_t__ STT_FUNC ; 
 scalar_t__ STT_NOTYPE ; 
 scalar_t__ STT_OBJECT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*,unsigned long*) ; 

c_db_sym_t
FUNC4(db_symtab_t *symtab, db_addr_t off, db_strategy_t strat,
    db_expr_t *diffp)
{
	c_linker_sym_t lsym;
	Elf_Sym *sym, *match;
	unsigned long diff;
	db_addr_t stoffs;

	if (symtab->private == NULL) {
		if (!FUNC3((caddr_t)off, &lsym, &diff)) {
			*diffp = (db_expr_t)diff;
			return ((c_db_sym_t)lsym);
		}
		return (NULL);
	}

	diff = ~0UL;
	match = NULL;
	stoffs = FUNC0(off);
	for (sym = (Elf_Sym*)symtab->start; (char*)sym < symtab->end; sym++) {
		if (sym->st_name == 0 || sym->st_shndx == SHN_UNDEF)
			continue;
		if (stoffs < sym->st_value)
			continue;
		if (FUNC2(sym->st_info) != STT_OBJECT &&
		    FUNC2(sym->st_info) != STT_FUNC &&
		    FUNC2(sym->st_info) != STT_NOTYPE)
			continue;
		if ((stoffs - sym->st_value) > diff)
			continue;
		if ((stoffs - sym->st_value) < diff) {
			diff = stoffs - sym->st_value;
			match = sym;
		} else {
			if (match == NULL)
				match = sym;
			else if (FUNC1(match->st_info) == STB_LOCAL &&
			    FUNC1(sym->st_info) != STB_LOCAL)
				match = sym;
		}
		if (diff == 0) {
			if (strat == DB_STGY_PROC &&
			    FUNC2(sym->st_info) == STT_FUNC &&
			    FUNC1(sym->st_info) != STB_LOCAL)
				break;
			if (strat == DB_STGY_ANY &&
			    FUNC1(sym->st_info) != STB_LOCAL)
				break;
		}
	}

	*diffp = (match == NULL) ? off : diff;
	return ((c_db_sym_t)match);
}