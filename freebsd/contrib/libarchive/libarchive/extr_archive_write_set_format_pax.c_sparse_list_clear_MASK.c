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
struct sparse_block {struct sparse_block* next; } ;
struct pax {int /*<<< orphan*/ * sparse_tail; struct sparse_block* sparse_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sparse_block*) ; 

__attribute__((used)) static void
FUNC1(struct pax *pax)
{
	while (pax->sparse_list != NULL) {
		struct sparse_block *sb = pax->sparse_list;
		pax->sparse_list = sb->next;
		FUNC0(sb);
	}
	pax->sparse_tail = NULL;
}