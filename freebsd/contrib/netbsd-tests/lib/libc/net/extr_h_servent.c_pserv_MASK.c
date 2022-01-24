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
typedef  int /*<<< orphan*/  uint16_t ;
struct servent {char* s_name; char* s_proto; char** s_aliases; scalar_t__ s_port; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(const struct servent *svp)
{
	char **pp;

	FUNC1("name=%s, port=%d, proto=%s, aliases=",
	    svp->s_name, FUNC0((uint16_t)svp->s_port), svp->s_proto);
	for (pp = svp->s_aliases; *pp; pp++)
		FUNC1("%s ", *pp);
	FUNC1("\n");
}