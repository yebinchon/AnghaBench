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
struct nai_realm {char* realm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char const*) ; 
 char* FUNC2 (char*,char) ; 
 char* FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct nai_realm *realm, const char *home_realm)
{
	char *tmp, *pos, *end;
	int match = 0;

	if (realm->realm == NULL || home_realm == NULL)
		return 0;

	if (FUNC2(realm->realm, ';') == NULL)
		return FUNC1(realm->realm, home_realm) == 0;

	tmp = FUNC3(realm->realm);
	if (tmp == NULL)
		return 0;

	pos = tmp;
	while (*pos) {
		end = FUNC2(pos, ';');
		if (end)
			*end = '\0';
		if (FUNC1(pos, home_realm) == 0) {
			match = 1;
			break;
		}
		if (end == NULL)
			break;
		pos = end + 1;
	}

	FUNC0(tmp);

	return match;
}