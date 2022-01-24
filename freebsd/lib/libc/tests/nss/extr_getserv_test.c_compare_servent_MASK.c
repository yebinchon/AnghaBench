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
struct servent {char* s_name; char* s_proto; scalar_t__ s_port; char** s_aliases; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct servent*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static  int
FUNC3(struct servent *serv1, struct servent *serv2, void *mdata)
{
	char **c1, **c2;

	if (serv1 == serv2)
		return 0;

	if ((serv1 == NULL) || (serv2 == NULL))
		goto errfin;

	if ((FUNC2(serv1->s_name, serv2->s_name) != 0) ||
		(FUNC2(serv1->s_proto, serv2->s_proto) != 0) ||
		(serv1->s_port != serv2->s_port))
			goto errfin;

	c1 = serv1->s_aliases;
	c2 = serv2->s_aliases;

	if ((serv1->s_aliases == NULL) || (serv2->s_aliases == NULL))
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
		FUNC0(serv1);
		FUNC0(serv2);
	}

	return (-1);
}