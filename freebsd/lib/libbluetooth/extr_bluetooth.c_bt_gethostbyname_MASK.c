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
struct hostent {char* h_name; char** h_aliases; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct hostent* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  host_stayopen ; 
 scalar_t__ FUNC3 (char*,char const*) ; 

struct hostent *
FUNC4(char const *name)
{
	struct hostent	*p;
	char		**cp;

	FUNC2(host_stayopen);
	while ((p = FUNC1()) != NULL) {
		if (FUNC3(p->h_name, name) == 0)
			break;
		for (cp = p->h_aliases; *cp != NULL; cp++)
			if (FUNC3(*cp, name) == 0)
				goto found;
	}
found:
	FUNC0();

	return (p);
}