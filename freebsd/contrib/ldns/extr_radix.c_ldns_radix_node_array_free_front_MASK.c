#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint16_t ;
struct TYPE_9__ {size_t len; TYPE_3__* array; scalar_t__ offset; } ;
typedef  TYPE_2__ ldns_radix_node_t ;
typedef  int /*<<< orphan*/  ldns_radix_array_t ;
struct TYPE_10__ {TYPE_1__* edge; } ;
struct TYPE_8__ {size_t parent_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_3__*,size_t) ; 

__attribute__((used)) static void
FUNC4(ldns_radix_node_t* node)
{
	uint16_t i, n = 0;
	/** Remove until a non NULL entry. */
   	while (n < node->len && node->array[n].edge == NULL) {
		n++;
	}
	if (n == 0) {
		return;
	}
	if (n == node->len) {
		FUNC2(node);
		return;
	}
	FUNC0(n < node->len);
	FUNC0((int) n <= (255 - (int) node->offset));
	FUNC3(&node->array[0], &node->array[n],
		(node->len - n)*sizeof(ldns_radix_array_t));
	node->offset += n;
	node->len -= n;
	for (i=0; i < node->len; i++) {
		if (node->array[i].edge) {
			node->array[i].edge->parent_index = i;
		}
	}
	FUNC1(node);
	return;
}