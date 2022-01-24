#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ifreq {scalar_t__ ifr_data; } ;
typedef  scalar_t__ caddr_t ;
struct TYPE_2__ {scalar_t__ vlr_tag; char* vlr_parent; } ;

/* Variables and functions */
 scalar_t__ NOTAG ; 
 int /*<<< orphan*/  SIOCIFCREATE2 ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 TYPE_1__ params ; 

__attribute__((used)) static void
FUNC3(int s, struct ifreq *ifr)
{
	if (params.vlr_tag != NOTAG || params.vlr_parent[0] != '\0') {
		/*
		 * One or both parameters were specified, make sure both.
		 */
		if (params.vlr_tag == NOTAG)
			FUNC1(1, "must specify a tag for vlan create");
		if (params.vlr_parent[0] == '\0')
			FUNC1(1, "must specify a parent device for vlan create");
		ifr->ifr_data = (caddr_t) &params;
	}
	if (FUNC2(s, SIOCIFCREATE2, ifr) < 0)
		FUNC0(1, "SIOCIFCREATE2");
}