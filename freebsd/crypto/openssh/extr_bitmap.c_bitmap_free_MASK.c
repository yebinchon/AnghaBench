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
struct bitmap {struct bitmap* d; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bitmap*) ; 
 int /*<<< orphan*/  FUNC1 (struct bitmap*) ; 

void
FUNC2(struct bitmap *b)
{
	if (b != NULL && b->d != NULL) {
		FUNC0(b);
		FUNC1(b->d);
		b->d = NULL;
	}
	FUNC1(b);
}