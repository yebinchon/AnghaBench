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
struct TYPE_9__ {int /*<<< orphan*/  count; int /*<<< orphan*/  mctx; int /*<<< orphan*/ * table; int /*<<< orphan*/  undefine_arg; int /*<<< orphan*/  (* undefine_action ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ isc_symtab_t ;
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_10__ {int /*<<< orphan*/  value; int /*<<< orphan*/  type; int /*<<< orphan*/  key; } ;
typedef  TYPE_2__ elt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*,unsigned int,unsigned int,TYPE_2__*) ; 
 int /*<<< orphan*/  ISC_R_NOTFOUND ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

isc_result_t
FUNC6(isc_symtab_t *symtab, const char *key, unsigned int type) {
	unsigned int bucket;
	elt_t *elt;

	FUNC1(FUNC3(symtab));
	FUNC1(key != NULL);

	FUNC0(symtab, key, type, bucket, elt);

	if (elt == NULL)
		return (ISC_R_NOTFOUND);

	if (symtab->undefine_action != NULL)
		(symtab->undefine_action)(elt->key, elt->type,
					  elt->value, symtab->undefine_arg);
	FUNC2(symtab->table[bucket], elt, link);
	FUNC4(symtab->mctx, elt, sizeof(*elt));
	symtab->count--;

	return (ISC_R_SUCCESS);
}