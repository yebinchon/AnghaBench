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
struct protoent {char* p_name; char** p_aliases; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct protoent* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proto_stayopen ; 
 scalar_t__ FUNC3 (char*,char const*) ; 

struct protoent *
FUNC4(char const *name)
{
	struct protoent	 *p;
	char		**cp;

	FUNC2(proto_stayopen);
	while ((p = FUNC1()) != NULL) {
		if (FUNC3(p->p_name, name) == 0)
			break;
		for (cp = p->p_aliases; *cp != NULL; cp++)
			if (FUNC3(*cp, name) == 0)
				goto found;
	}
found:
	FUNC0();

	return (p);
}