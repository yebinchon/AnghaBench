#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lzma_allocator ;
struct TYPE_3__ {int /*<<< orphan*/ * root; } ;
typedef  TYPE_1__ index_tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,void (*) (void*,int /*<<< orphan*/  const*)) ; 

__attribute__((used)) static void
FUNC2(index_tree *tree, const lzma_allocator *allocator,
		void (*free_func)(void *node, const lzma_allocator *allocator))
{
	FUNC0(free_func != NULL);

	if (tree->root != NULL)
		FUNC1(tree->root, allocator, free_func);

	return;
}