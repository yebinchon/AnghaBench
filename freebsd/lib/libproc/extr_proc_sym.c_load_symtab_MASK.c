#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
typedef  int u_int ;
struct symtab {int* index; int nsyms; int /*<<< orphan*/  stridx; int /*<<< orphan*/ * data; } ;
struct symsort_thunk {struct symtab* symtab; int /*<<< orphan*/ * e; } ;
struct TYPE_3__ {scalar_t__ sh_type; int sh_size; int sh_entsize; int /*<<< orphan*/  sh_link; } ;
typedef  TYPE_1__ GElf_Shdr ;
typedef  int /*<<< orphan*/  GElf_Ehdr ;
typedef  int /*<<< orphan*/  Elf_Scn ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 int* FUNC0 (int,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int,struct symsort_thunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  symvalcmp ; 

__attribute__((used)) static int
FUNC6(Elf *e, struct symtab *symtab, u_long sh_type)
{
	GElf_Ehdr ehdr;
	GElf_Shdr shdr;
	struct symsort_thunk thunk;
	Elf_Scn *scn;
	u_int nsyms;

	if (FUNC3(e, &ehdr) == NULL)
		return (-1);

	scn = NULL;
	while ((scn = FUNC2(e, scn)) != NULL) {
		(void)FUNC4(scn, &shdr);
		if (shdr.sh_type == sh_type)
			break;
	}
	if (scn == NULL)
		return (-1);

	nsyms = shdr.sh_size / shdr.sh_entsize;
	if (nsyms > (1 << 20))
		return (-1);

	if ((symtab->data = FUNC1(scn, NULL)) == NULL)
		return (-1);

	symtab->index = FUNC0(nsyms, sizeof(u_int));
	if (symtab->index == NULL)
		return (-1);
	for (u_int i = 0; i < nsyms; i++)
		symtab->index[i] = i;
	symtab->nsyms = nsyms;
	symtab->stridx = shdr.sh_link;

	thunk.e = e;
	thunk.symtab = symtab;
	FUNC5(symtab->index, nsyms, sizeof(u_int), &thunk, symvalcmp);

	return (0);
}