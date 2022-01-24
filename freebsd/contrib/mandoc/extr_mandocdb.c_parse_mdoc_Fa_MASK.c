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
typedef  int /*<<< orphan*/  uint64_t ;
struct roff_node {scalar_t__ sec; int /*<<< orphan*/  child; } ;
struct roff_meta {int dummy; } ;
struct mpage {int dummy; } ;

/* Variables and functions */
 scalar_t__ SEC_SYNOPSIS ; 
 int /*<<< orphan*/  TYPE_Fa ; 
 int /*<<< orphan*/  TYPE_Vt ; 
 int /*<<< orphan*/  FUNC0 (struct mpage*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct mpage *mpage, const struct roff_meta *meta,
	const struct roff_node *n)
{
	uint64_t mask;

	mask = TYPE_Fa;
	if (n->sec == SEC_SYNOPSIS)
		mask |= TYPE_Vt;

	FUNC0(mpage, n->child, mask, 0);
	return 0;
}