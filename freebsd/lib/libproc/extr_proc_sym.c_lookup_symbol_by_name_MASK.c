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
struct symtab {scalar_t__ nsyms; int /*<<< orphan*/  stridx; int /*<<< orphan*/ * data; } ;
struct TYPE_8__ {int prs_id; } ;
typedef  TYPE_1__ prsyminfo_t ;
struct TYPE_9__ {int /*<<< orphan*/  st_name; } ;
typedef  TYPE_2__ GElf_Sym ;
typedef  int /*<<< orphan*/  Elf_Data ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 int ENOENT ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*,int) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 

__attribute__((used)) static int
FUNC4(Elf *elf, struct symtab *symtab, const char *symbol,
    GElf_Sym *symcopy, prsyminfo_t *si)
{
	GElf_Sym sym;
	Elf_Data *data;
	char *s;
	int i;

	if (symtab->nsyms == 0)
		return (ENOENT);
	data = symtab->data;
	for (i = 0; FUNC1(data, i, &sym) != NULL; i++) {
		s = FUNC0(elf, symtab->stridx, sym.st_name);
		if (s != NULL && FUNC3(s, symbol) == 0) {
			FUNC2(symcopy, &sym, sizeof(*symcopy));
			if (si != NULL)
				si->prs_id = i;
			return (0);
		}
	}
	return (ENOENT);
}