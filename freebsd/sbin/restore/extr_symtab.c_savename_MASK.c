#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strhdr {struct strhdr* next; } ;
struct TYPE_2__ {struct strhdr* next; } ;

/* Variables and functions */
 size_t STRTBLINCR ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 size_t FUNC4 (char*) ; 
 TYPE_1__* strtblhdr ; 

char *
FUNC5(char *name)
{
	struct strhdr *np;
	size_t len;
	char *cp;

	if (name == NULL)
		FUNC2("bad name\n");
	len = FUNC4(name);
	np = strtblhdr[len / STRTBLINCR].next;
	if (np != NULL) {
		strtblhdr[len / STRTBLINCR].next = np->next;
		cp = (char *)np;
	} else {
		cp = FUNC1(FUNC0(len));
		if (cp == NULL)
			FUNC2("no space for string table\n");
	}
	(void) FUNC3(cp, name);
	return (cp);
}