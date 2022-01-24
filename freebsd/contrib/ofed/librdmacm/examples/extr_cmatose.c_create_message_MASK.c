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
struct cmatest_node {int /*<<< orphan*/  mem; int /*<<< orphan*/  mr; int /*<<< orphan*/  pd; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBV_ACCESS_LOCAL_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ message_count ; 
 int /*<<< orphan*/  message_size ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct cmatest_node *node)
{
	if (!message_size)
		message_count = 0;

	if (!message_count)
		return 0;

	node->mem = FUNC2(message_size);
	if (!node->mem) {
		FUNC3("failed message allocation\n");
		return -1;
	}
	node->mr = FUNC1(node->pd, node->mem, message_size,
			     IBV_ACCESS_LOCAL_WRITE);
	if (!node->mr) {
		FUNC3("failed to reg MR\n");
		goto err;
	}
	return 0;
err:
	FUNC0(node->mem);
	return -1;
}