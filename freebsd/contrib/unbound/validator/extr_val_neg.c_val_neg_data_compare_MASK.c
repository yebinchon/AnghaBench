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
struct val_neg_data {int /*<<< orphan*/  labs; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

int FUNC1(const void* a, const void* b)
{
	struct val_neg_data* x = (struct val_neg_data*)a;
	struct val_neg_data* y = (struct val_neg_data*)b;
	int m;
	return FUNC0(x->name, x->labs, y->name, y->labs, &m);
}