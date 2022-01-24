#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int f3; int last_f2f3; } ;
struct TYPE_4__ {TYPE_1__ s; } ;
struct pt_ild {TYPE_2__ u; } ;

/* Variables and functions */
 int FUNC0 (struct pt_ild*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int pte_internal ; 

__attribute__((used)) static int FUNC1(struct pt_ild *ild, uint8_t length, uint8_t rex)
{
	(void) rex;

	if (!ild)
		return -pte_internal;

	ild->u.s.f3 = 1;
	ild->u.s.last_f2f3 = 3;

	return FUNC0(ild, length, 0);
}