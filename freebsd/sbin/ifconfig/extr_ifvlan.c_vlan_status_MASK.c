#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vlanreq {int vlr_tag; char* vlr_parent; } ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_3__ {int ifr_vlan_pcp; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIOCGVLANPCP ; 
 int FUNC0 (int,TYPE_1__*,struct vlanreq*) ; 
 TYPE_1__ ifr ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(int s)
{
	struct vlanreq		vreq;

	if (FUNC0(s, &ifr, &vreq) == -1)
		return;
	FUNC2("\tvlan: %d", vreq.vlr_tag);
	if (FUNC1(s, SIOCGVLANPCP, (caddr_t)&ifr) != -1)
		FUNC2(" vlanpcp: %u", ifr.ifr_vlan_pcp);
	FUNC2(" parent interface: %s", vreq.vlr_parent[0] == '\0' ?
	    "<none>" : vreq.vlr_parent);
	FUNC2("\n");
}