#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ isc_uint32_t ;
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_9__ {scalar_t__ maxbits; TYPE_2__* head; } ;
typedef  TYPE_1__ isc_radix_tree_t ;
struct TYPE_10__ {scalar_t__ bit; int* node_num; TYPE_3__* prefix; struct TYPE_10__* l; struct TYPE_10__* r; } ;
typedef  TYPE_2__ isc_radix_node_t ;
struct TYPE_11__ {scalar_t__ bitlen; int family; } ;
typedef  TYPE_3__ isc_prefix_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  ISC_R_NOTFOUND ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  RADIX_MAXBITS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_3__*) ; 

isc_result_t
FUNC7(isc_radix_tree_t *radix, isc_radix_node_t **target,
		 isc_prefix_t *prefix)
{
	isc_radix_node_t *node;
	isc_radix_node_t *stack[RADIX_MAXBITS + 1];
	u_char *addr;
	isc_uint32_t bitlen;
	int tfamily = -1;
	int cnt = 0;

	FUNC2(radix != NULL);
	FUNC2(prefix != NULL);
	FUNC2(target != NULL && *target == NULL);
	FUNC3(prefix->bitlen <= radix->maxbits);

	*target = NULL;

	if (radix->head == NULL) {
		return (ISC_R_NOTFOUND);
	}

	node = radix->head;
	addr = FUNC6(prefix);
	bitlen = prefix->bitlen;

	while (node->bit < bitlen) {
		if (node->prefix)
			stack[cnt++] = node;

		if (FUNC0(addr[node->bit >> 3], 0x80 >> (node->bit & 0x07)))
			node = node->r;
		else
			node = node->l;

		if (node == NULL)
			break;
	}

	if (node && node->prefix)
		stack[cnt++] = node;

	while (cnt-- > 0) {
		node = stack[cnt];

		if (FUNC4(FUNC5(node->prefix),
				    FUNC5(prefix),
				    node->prefix->bitlen)) {
			if (node->node_num[FUNC1(prefix->family)] != -1 &&
				 ((*target == NULL) ||
				  (*target)->node_num[FUNC1(tfamily)] >
				   node->node_num[FUNC1(prefix->family)])) {
				*target = node;
				tfamily = prefix->family;
			}
		}
	}

	if (*target == NULL) {
		return (ISC_R_NOTFOUND);
	} else {
		return (ISC_R_SUCCESS);
	}
}