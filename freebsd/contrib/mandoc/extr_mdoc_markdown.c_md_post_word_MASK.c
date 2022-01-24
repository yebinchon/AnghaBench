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
struct roff_node {int /*<<< orphan*/  tok; } ;
struct TYPE_2__ {char* suffix; } ;

/* Variables and functions */
 int MD_nl ; 
 int MD_spc ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int outflags ; 

__attribute__((used)) static void
FUNC2(struct roff_node *n)
{
	const char	*suffix;

	if ((suffix = FUNC0(n->tok)->suffix) != NULL) {
		outflags &= ~(MD_spc | MD_nl);
		FUNC1(suffix);
	}
}