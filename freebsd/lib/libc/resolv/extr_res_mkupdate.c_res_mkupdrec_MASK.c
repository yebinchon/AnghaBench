#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
typedef  scalar_t__ u_int ;
struct TYPE_4__ {scalar_t__ r_section; int /*<<< orphan*/  r_ttl; scalar_t__ r_type; scalar_t__ r_class; int /*<<< orphan*/  r_dname; } ;
typedef  TYPE_1__ ns_updrec ;
typedef  scalar_t__ ns_type ;
typedef  scalar_t__ ns_sect ;
typedef  scalar_t__ ns_class ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  r_glink ; 
 int /*<<< orphan*/  r_link ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

ns_updrec *
FUNC4(int section, const char *dname,
	     u_int class, u_int type, u_long ttl) {
	ns_updrec *rrecp = (ns_updrec *)FUNC1(1, sizeof(ns_updrec));

	if (!rrecp || !(rrecp->r_dname = FUNC3(dname))) {
		if (rrecp)
			FUNC2((char *)rrecp);
		return (NULL);
	}
	FUNC0(rrecp, r_link);
	FUNC0(rrecp, r_glink);
 	rrecp->r_class = (ns_class)class;
	rrecp->r_type = (ns_type)type;
	rrecp->r_ttl = ttl;
	rrecp->r_section = (ns_sect)section;
	return (rrecp);
}