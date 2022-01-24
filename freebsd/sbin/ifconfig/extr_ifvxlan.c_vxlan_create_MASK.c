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
struct ifreq {scalar_t__ ifr_data; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIOCIFCREATE2 ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  params ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3(int s, struct ifreq *ifr)
{

	FUNC2();

	ifr->ifr_data = (caddr_t) &params;
	if (FUNC1(s, SIOCIFCREATE2, ifr) < 0)
		FUNC0(1, "SIOCIFCREATE2");
}