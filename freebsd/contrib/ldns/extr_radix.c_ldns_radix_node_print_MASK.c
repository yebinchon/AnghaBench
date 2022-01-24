#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint8_t ;
typedef  size_t radix_strlen_t ;
struct TYPE_5__ {unsigned int len; TYPE_1__* array; scalar_t__ data; } ;
typedef  TYPE_2__ ldns_radix_node_t ;
struct TYPE_4__ {unsigned int* str; size_t len; TYPE_2__* edge; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC1(FILE* fd, ldns_radix_node_t* node,
	uint8_t i, uint8_t* str, radix_strlen_t len, unsigned d)
{
	uint8_t j;
	if (!node) {
		return;
	}
	for (j = 0; j < d; j++) {
		FUNC0(fd, "--");
	}
	if (str) {
		radix_strlen_t l;
		FUNC0(fd, "| [%u+", (unsigned) i);
		for (l=0; l < len; l++) {
			FUNC0(fd, "%c", (char) str[l]);
		}
		FUNC0(fd, "]%u", (unsigned) len);
	} else {
		FUNC0(fd, "| [%u]", (unsigned) i);
	}

	if (node->data) {
		FUNC0(fd, " %s", (char*) node->data);
	}
	FUNC0(fd, "\n");

	for (j = 0; j < node->len; j++) {
		if (node->array[j].edge) {
			FUNC1(fd, node->array[j].edge, j,
				node->array[j].str, node->array[j].len, d+1);
		}
	}
	return;
}