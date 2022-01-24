#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct filegen_entry {char const* name; int /*<<< orphan*/ * filegen; struct filegen_entry* next; } ;
typedef  int /*<<< orphan*/  FILEGEN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct filegen_entry* FUNC1 (int) ; 
 char const* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,int /*<<< orphan*/ *) ; 
 struct filegen_entry* filegen_registry ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*) ; 

void
FUNC5(
	const char *	dir,
	const char *	name,
	FILEGEN *	filegen
	)
{
	struct filegen_entry **ppfe;

	FUNC0(4, ("filegen_register(%s, %p)\n", name, filegen));

	FUNC3(dir, name, filegen);

	ppfe = &filegen_registry;
	while (NULL != *ppfe) {
		if ((*ppfe)->name == name 
		    || !FUNC4((*ppfe)->name, name)) {

			FUNC0(5, ("replacing filegen %p\n",
				    (*ppfe)->filegen));

			(*ppfe)->filegen = filegen;
			return;
		}
		ppfe = &((*ppfe)->next);
	}

	*ppfe = FUNC1(sizeof **ppfe);

	(*ppfe)->next = NULL;
	(*ppfe)->name = FUNC2(name);
	(*ppfe)->filegen = filegen;

	FUNC0(6, ("adding new filegen\n"));
	
	return;
}