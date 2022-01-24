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
struct block {int sense; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct block*,struct block*) ; 

void
FUNC2(struct block *b0, struct block *b1)
{
	b0->sense = !b0->sense;
	FUNC0(b0, b1->head);
	b0->sense = !b0->sense;
	FUNC1(b1, b0);
	b1->head = b0->head;
}