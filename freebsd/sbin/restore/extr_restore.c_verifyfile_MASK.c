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
typedef  int /*<<< orphan*/  uintmax_t ;
struct entry {int e_type; struct entry* e_links; } ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 long FAIL ; 
 long GOOD ; 
 int LEAF ; 
 int /*<<< orphan*/  FUNC0 (struct entry*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 struct entry* FUNC2 (scalar_t__) ; 
 struct entry* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

long
FUNC5(char *name, ino_t ino, int type)
{
	struct entry *np, *ep;
	long descend = GOOD;

	ep = FUNC3(name);
	if (ep == NULL) {
		FUNC1(stderr, "Warning: missing name %s\n", name);
		return (FAIL);
	}
	np = FUNC2(ino);
	if (np != ep)
		descend = FAIL;
	for ( ; np != NULL; np = np->e_links)
		if (np == ep)
			break;
	if (np == NULL)
		FUNC4("missing inumber %ju\n", (uintmax_t)ino);
	if (ep->e_type == LEAF && type != LEAF)
		FUNC0(ep, "type should be LEAF");
	return (descend);
}