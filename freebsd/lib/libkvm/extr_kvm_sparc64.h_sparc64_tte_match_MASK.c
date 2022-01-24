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
struct sparc64_tte {int tte_data; scalar_t__ tte_vpn; } ;
typedef  int /*<<< orphan*/  kvaddr_t ;

/* Variables and functions */
 int SPARC64_TD_V ; 
 int /*<<< orphan*/  FUNC0 (struct sparc64_tte*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline int
FUNC2(struct sparc64_tte *tp, kvaddr_t va)
{

	return (((tp->tte_data & SPARC64_TD_V) != 0) &&
	    (tp->tte_vpn == FUNC1(va, FUNC0(tp))));
}