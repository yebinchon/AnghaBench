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
struct protoent {char* p_name; int p_proto; char** p_aliases; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(const struct protoent *prp)
{
	char **pp;

	FUNC0("name=%s, proto=%d, aliases=",
	    prp->p_name, prp->p_proto);
	for (pp = prp->p_aliases; *pp; pp++)
		FUNC0("%s ", *pp);
	FUNC0("\n");
}