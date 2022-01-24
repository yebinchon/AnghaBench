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
struct isoent {int /*<<< orphan*/  rbtree; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static struct isoent *
FUNC1(struct isoent *isoent, const char *child_name)
{
	struct isoent *np;

	np = (struct isoent *)FUNC0(
	    &(isoent->rbtree), child_name);
	return (np);
}