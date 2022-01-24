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
struct protoent {char* p_name; char** p_aliases; int /*<<< orphan*/  p_proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char** FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct protoent*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(struct protoent *dest, struct protoent const *src)
{
	FUNC0(dest != NULL);
	FUNC0(src != NULL);

	char **cp;
	int aliases_num;

	FUNC2(dest, 0, sizeof(struct protoent));

	if (src->p_name != NULL) {
		dest->p_name = FUNC3(src->p_name);
		FUNC0(dest->p_name != NULL);
	}

	dest->p_proto = src->p_proto;

	if (src->p_aliases != NULL) {
		aliases_num = 0;
		for (cp = src->p_aliases; *cp; ++cp)
			++aliases_num;

		dest->p_aliases = FUNC1(aliases_num + 1, sizeof(char *));
		FUNC0(dest->p_aliases != NULL);

		for (cp = src->p_aliases; *cp; ++cp) {
			dest->p_aliases[cp - src->p_aliases] = FUNC3(*cp);
			FUNC0(dest->p_aliases[cp - src->p_aliases] != NULL);
		}
	}
}