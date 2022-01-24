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
struct lafe_line_reader {struct lafe_line_reader* pathname; struct lafe_line_reader* buff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lafe_line_reader*) ; 

void
FUNC1(struct lafe_line_reader *lr)
{
	FUNC0(lr->buff);
	FUNC0(lr->pathname);
	FUNC0(lr);
}