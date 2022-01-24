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
struct TYPE_3__ {scalar_t__ asz; } ;
struct TYPE_4__ {TYPE_1__ s; } ;
struct pt_ild {TYPE_2__ u; } ;
typedef  enum pt_exec_mode { ____Placeholder_pt_exec_mode } pt_exec_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pt_ild const*) ; 
 int ptem_32bit ; 
 int ptem_64bit ; 
 int FUNC1 (struct pt_ild const*) ; 

__attribute__((used)) static inline enum pt_exec_mode
FUNC2(const struct pt_ild *ild)
{
	if (FUNC0(ild)) {
		if (ild->u.s.asz)
			return ptem_32bit;
		return ptem_64bit;
	}
	return FUNC1(ild);
}