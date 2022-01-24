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
struct TYPE_3__ {int chassis; int geoslot; } ;
typedef  TYPE_1__ unit_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*,char const*,int) ; 

__attribute__((used)) static void FUNC1(char *buf, size_t bufsize, const char *proto, unit_t *u, int IOPportnum) {
	int			portnum;

	portnum = ((u->chassis - 1) * 64) + ((u->geoslot - 1) * 8) + IOPportnum + 1;
	FUNC0(buf, bufsize, "%s_%d", proto, portnum);
}