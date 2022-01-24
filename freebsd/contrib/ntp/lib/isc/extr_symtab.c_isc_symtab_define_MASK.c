#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_symvalue_t ;
struct TYPE_11__ {scalar_t__ count; scalar_t__ maxload; int /*<<< orphan*/ * table; int /*<<< orphan*/  mctx; int /*<<< orphan*/  undefine_arg; int /*<<< orphan*/  (* undefine_action ) (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ isc_symtab_t ;
typedef  scalar_t__ isc_symexists_t ;
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_12__ {unsigned int type; int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;
typedef  TYPE_2__ elt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,unsigned int,unsigned int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISC_R_EXISTS ; 
 int /*<<< orphan*/  ISC_R_NOMEMORY ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ isc_symexists_add ; 
 scalar_t__ isc_symexists_reject ; 
 scalar_t__ isc_symexists_replace ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

isc_result_t
FUNC11(isc_symtab_t *symtab, const char *key, unsigned int type,
		  isc_symvalue_t value, isc_symexists_t exists_policy)
{
	unsigned int bucket;
	elt_t *elt;

	FUNC5(FUNC7(symtab));
	FUNC5(key != NULL);
	FUNC5(type != 0);

	FUNC1(symtab, key, type, bucket, elt);

	if (exists_policy != isc_symexists_add && elt != NULL) {
		if (exists_policy == isc_symexists_reject)
			return (ISC_R_EXISTS);
		FUNC2(exists_policy == isc_symexists_replace);
		FUNC6(symtab->table[bucket], elt, link);
		if (symtab->undefine_action != NULL)
			(symtab->undefine_action)(elt->key, elt->type,
						  elt->value,
						  symtab->undefine_arg);
	} else {
		elt = (elt_t *)FUNC9(symtab->mctx, sizeof(*elt));
		if (elt == NULL)
			return (ISC_R_NOMEMORY);
		FUNC3(elt, link);
		symtab->count++;
	}

	/*
	 * Though the "key" can be const coming in, it is not stored as const
	 * so that the calling program can easily have writable access to
	 * it in its undefine_action function.  In the event that it *was*
	 * truly const coming in and then the caller modified it anyway ...
	 * well, don't do that!
	 */
	FUNC0(key, elt->key);
	elt->type = type;
	elt->value = value;

	/*
	 * We prepend so that the most recent definition will be found.
	 */
	FUNC4(symtab->table[bucket], elt, link);

	if (symtab->count > symtab->maxload)
		FUNC8(symtab);

	return (ISC_R_SUCCESS);
}