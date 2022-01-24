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
struct servent {char* s_name; char* s_proto; char** s_aliases; int /*<<< orphan*/  s_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char** FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct servent*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(struct servent *dest, struct servent const *src)
{
	FUNC0(dest != NULL);
	FUNC0(src != NULL);

	char **cp;
	int aliases_num;

	FUNC2(dest, 0, sizeof(struct servent));

	if (src->s_name != NULL) {
		dest->s_name = FUNC3(src->s_name);
		FUNC0(dest->s_name != NULL);
	}

	if (src->s_proto != NULL) {
		dest->s_proto = FUNC3(src->s_proto);
		FUNC0(dest->s_proto != NULL);
	}
	dest->s_port = src->s_port;

	if (src->s_aliases != NULL) {
		aliases_num = 0;
		for (cp = src->s_aliases; *cp; ++cp)
			++aliases_num;

		dest->s_aliases = FUNC1(aliases_num + 1, sizeof(char *));
		FUNC0(dest->s_aliases != NULL);

		for (cp = src->s_aliases; *cp; ++cp) {
			dest->s_aliases[cp - src->s_aliases] = FUNC3(*cp);
			FUNC0(dest->s_aliases[cp - src->s_aliases] != NULL);
		}
	}
}