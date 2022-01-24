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
struct in_addr {int /*<<< orphan*/  s_addr; } ;
typedef  int in_addr_t ;
typedef  int i ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  IN_CLASSA_NET ; 
 int IN_CLASSA_NSHIFT ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  IN_CLASSB_NET ; 
 int IN_CLASSB_NSHIFT ; 
 int /*<<< orphan*/  IN_CLASSC_NET ; 
 int IN_CLASSC_NSHIFT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

in_addr_t
FUNC3(struct in_addr in)
{
	in_addr_t i = FUNC2(in.s_addr);

	if (FUNC0(i))
		return (((i)&IN_CLASSA_NET) >> IN_CLASSA_NSHIFT);
	else if (FUNC1(i))
		return (((i)&IN_CLASSB_NET) >> IN_CLASSB_NSHIFT);
	else
		return (((i)&IN_CLASSC_NET) >> IN_CLASSC_NSHIFT);
}