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
struct rpcent {char* r_name; char** r_aliases; int /*<<< orphan*/  r_number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char** FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rpcent*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(struct rpcent *dest, struct rpcent const *src)
{
	FUNC0(dest != NULL);
	FUNC0(src != NULL);

	char **cp;
	int aliases_num;

	FUNC2(dest, 0, sizeof(struct rpcent));

	if (src->r_name != NULL) {
		dest->r_name = FUNC3(src->r_name);
		FUNC0(dest->r_name != NULL);
	}

	dest->r_number = src->r_number;

	if (src->r_aliases != NULL) {
		aliases_num = 0;
		for (cp = src->r_aliases; *cp; ++cp)
			++aliases_num;

		dest->r_aliases = FUNC1(aliases_num + 1, sizeof(char *));
		FUNC0(dest->r_aliases != NULL);

		for (cp = src->r_aliases; *cp; ++cp) {
			dest->r_aliases[cp - src->r_aliases] = FUNC3(*cp);
			FUNC0(dest->r_aliases[cp - src->r_aliases] != NULL);
		}
	}
}