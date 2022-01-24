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
struct icmp6_hdr {int /*<<< orphan*/  icmp6_id; } ;

/* Variables and functions */
 scalar_t__ ident ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(const struct icmp6_hdr *icp)
{
	if (FUNC0(icp->icmp6_id) == ident)
		return 1;
	else
		return 0;
}