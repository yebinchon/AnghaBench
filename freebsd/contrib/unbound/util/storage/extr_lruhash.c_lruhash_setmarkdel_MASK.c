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
struct lruhash {int /*<<< orphan*/  lock; int /*<<< orphan*/  markdelfunc; } ;
typedef  int /*<<< orphan*/  lruhash_markdelfunc_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void 
FUNC2(struct lruhash* table, lruhash_markdelfunc_type md)
{
	FUNC0(&table->lock);
	table->markdelfunc = md;
	FUNC1(&table->lock);
}