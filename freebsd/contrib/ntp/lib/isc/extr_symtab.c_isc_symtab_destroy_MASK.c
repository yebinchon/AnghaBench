#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {unsigned int size; int /*<<< orphan*/  mctx; scalar_t__ magic; struct TYPE_10__* table; int /*<<< orphan*/  undefine_arg; int /*<<< orphan*/  value; int /*<<< orphan*/  type; int /*<<< orphan*/  key; int /*<<< orphan*/  (* undefine_action ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ isc_symtab_t ;
typedef  int /*<<< orphan*/  eltlist_t ;
typedef  TYPE_1__ elt_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(isc_symtab_t **symtabp) {
	isc_symtab_t *symtab;
	unsigned int i;
	elt_t *elt, *nelt;

	FUNC2(symtabp != NULL);
	symtab = *symtabp;
	FUNC2(FUNC3(symtab));

	for (i = 0; i < symtab->size; i++) {
		for (elt = FUNC0(symtab->table[i]); elt != NULL; elt = nelt) {
			nelt = FUNC1(elt, link);
			if (symtab->undefine_action != NULL)
			       (symtab->undefine_action)(elt->key,
							 elt->type,
							 elt->value,
							 symtab->undefine_arg);
			FUNC4(symtab->mctx, elt, sizeof(*elt));
		}
	}
	FUNC4(symtab->mctx, symtab->table,
		    symtab->size * sizeof(eltlist_t));
	symtab->magic = 0;
	FUNC4(symtab->mctx, symtab, sizeof(*symtab));

	*symtabp = NULL;
}