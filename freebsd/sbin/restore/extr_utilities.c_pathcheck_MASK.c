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
struct entry {int e_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  d_ino; } ;

/* Variables and functions */
 int KEEP ; 
 int NEW ; 
 int /*<<< orphan*/  NODE ; 
 struct entry* FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct entry* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct entry*) ; 
 TYPE_1__* FUNC3 (char*) ; 
 char* FUNC4 (char*,char) ; 

void
FUNC5(char *name)
{
	char *cp;
	struct entry *ep;
	char *start;

	start = FUNC4(name, '/');
	if (start == NULL)
		return;
	for (cp = start; *cp != '\0'; cp++) {
		if (*cp != '/')
			continue;
		*cp = '\0';
		ep = FUNC1(name);
		if (ep == NULL) {
			/* Safe; we know the pathname exists in the dump. */
			ep = FUNC0(name, FUNC3(name)->d_ino, NODE);
			FUNC2(ep);
		}
		ep->e_flags |= NEW|KEEP;
		*cp = '/';
	}
}