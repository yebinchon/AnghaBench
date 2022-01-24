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
struct TYPE_2__ {char* prefix; } ;

/* Variables and functions */
 int /*<<< orphan*/  MD_spc ; 
 int /*<<< orphan*/  code_blocks ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  outflags ; 

__attribute__((used)) static int
FUNC2(struct roff_node *n)
{
	const char	*prefix;

	if ((prefix = FUNC0(n->tok)->prefix) != NULL) {
		FUNC1(prefix);
		outflags &= ~MD_spc;
		if (*prefix == '`')
			code_blocks++;
	}
	return 1;
}