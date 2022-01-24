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
struct protoent {char* p_name; scalar_t__ p_proto; char** p_aliases; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct protoent*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static  int
FUNC3(struct protoent *pe1, struct protoent *pe2, void *mdata)
{
	char **c1, **c2;

	if (pe1 == pe2)
		return 0;

	if ((pe1 == NULL) || (pe2 == NULL))
		goto errfin;

	if ((FUNC2(pe1->p_name, pe2->p_name) != 0) ||
		(pe1->p_proto != pe2->p_proto))
			goto errfin;

	c1 = pe1->p_aliases;
	c2 = pe2->p_aliases;

	if ((pe1->p_aliases == NULL) || (pe2->p_aliases == NULL))
		goto errfin;

	for (;*c1 && *c2; ++c1, ++c2)
		if (FUNC2(*c1, *c2) != 0)
			goto errfin;

	if ((*c1 != NULL) || (*c2 != NULL))
		goto errfin;

	return 0;

errfin:
	if (mdata == NULL) {
		FUNC1("following structures are not equal:\n");
		FUNC0(pe1);
		FUNC0(pe2);
	}

	return (-1);
}