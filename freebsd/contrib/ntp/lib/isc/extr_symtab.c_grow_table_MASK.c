#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int size; unsigned int maxload; int /*<<< orphan*/ * table; int /*<<< orphan*/  mctx; int /*<<< orphan*/  case_sensitive; } ;
typedef  TYPE_1__ isc_symtab_t ;
typedef  int /*<<< orphan*/  eltlist_t ;
struct TYPE_10__ {int /*<<< orphan*/  key; } ;
typedef  TYPE_2__ elt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_2__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  link ; 

__attribute__((used)) static void
FUNC10(isc_symtab_t *symtab) {
	eltlist_t *newtable;
	unsigned int i, newsize, newmax;

	FUNC5(symtab != NULL);

	newsize = symtab->size * 2;
	newmax = newsize * 3 / 4;
	FUNC3(newsize > 0U && newmax > 0U);

	newtable = FUNC8(symtab->mctx, newsize * sizeof(eltlist_t));
	if (newtable == NULL)
		return;

	for (i = 0; i < newsize; i++)
		FUNC2(newtable[i]);

	for (i = 0; i < symtab->size; i++) {
		elt_t *elt, *nelt;

		for (elt = FUNC1(symtab->table[i]); elt != NULL; elt = nelt) {
			unsigned int hv;

			nelt = FUNC4(elt, link);

			FUNC6(symtab->table[i], elt, link);
			hv = FUNC7(elt->key, symtab->case_sensitive);
			FUNC0(newtable[hv % newsize], elt, link);
		}
	}

	FUNC9(symtab->mctx, symtab->table,
		    symtab->size * sizeof(eltlist_t));

	symtab->table = newtable;
	symtab->size = newsize;
	symtab->maxload = newmax;
}