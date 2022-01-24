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
struct radix_tree_root {int dummy; } ;
struct radix_tree_iter {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radix_tree_root*,int /*<<< orphan*/ ) ; 

void
FUNC1(struct radix_tree_root *root,
    struct radix_tree_iter *iter, void **slot)
{
	FUNC0(root, iter->index);
}