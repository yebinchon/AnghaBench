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
struct thread {int dummy; } ;
struct dbreg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dbreg*,int) ; 

int
FUNC1(struct thread *td, struct dbreg *regs)
{

	FUNC0(regs, sizeof(*regs));
	return (0);
}