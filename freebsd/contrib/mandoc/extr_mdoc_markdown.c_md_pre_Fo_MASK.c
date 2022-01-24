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
struct roff_node {int type; int /*<<< orphan*/ * child; } ;

/* Variables and functions */
 int MD_nl ; 
 int MD_spc ; 
#define  ROFFT_BLOCK 130 
#define  ROFFT_BODY 129 
#define  ROFFT_HEAD 128 
 int /*<<< orphan*/  FUNC0 (struct roff_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct roff_node*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int outflags ; 

__attribute__((used)) static int
FUNC3(struct roff_node *n)
{
	switch (n->type) {
	case ROFFT_BLOCK:
		FUNC1(n);
		break;
	case ROFFT_HEAD:
		if (n->child == NULL)
			return 0;
		FUNC0(n);
		break;
	case ROFFT_BODY:
		outflags &= ~(MD_spc | MD_nl);
		FUNC2("(");
		break;
	default:
		break;
	}
	return 1;
}