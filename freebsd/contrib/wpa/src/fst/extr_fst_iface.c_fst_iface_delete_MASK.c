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
struct fst_iface {int /*<<< orphan*/  mb_ie; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fst_iface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fst_iface*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct fst_iface *i)
{
	FUNC0(i, NULL);
	FUNC2(i->mb_ie);
	FUNC1(i);
}