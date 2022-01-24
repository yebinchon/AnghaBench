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
struct icode {int cur_mark; int /*<<< orphan*/  root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct icode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct icode *ic)
{
	ic->cur_mark += 1;
	FUNC0(ic, ic->root);
}