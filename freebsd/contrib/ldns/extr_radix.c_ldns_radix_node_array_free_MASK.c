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
struct TYPE_3__ {scalar_t__ capacity; int /*<<< orphan*/ * array; scalar_t__ len; scalar_t__ offset; } ;
typedef  TYPE_1__ ldns_radix_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(ldns_radix_node_t* node)
{
	node->offset = 0;
	node->len = 0;
	FUNC0(node->array);
	node->array = NULL;
	node->capacity = 0;
	return;
}