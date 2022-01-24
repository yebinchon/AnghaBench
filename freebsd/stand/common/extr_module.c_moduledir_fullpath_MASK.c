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
struct moduledir {char const* d_path; } ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static char *
FUNC4(struct moduledir *mdp, const char *fname)
{
	char *cp;

	cp = FUNC0(FUNC3(mdp->d_path) + FUNC3(fname) + 2);
	if (cp == NULL)
		return NULL;
	FUNC2(cp, mdp->d_path);
	FUNC1(cp, "/");
	FUNC1(cp, fname);
	return (cp);
}