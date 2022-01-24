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
struct afswtch {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_2__ {int ifr_curcap; int ifr_reqcap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  SIOCGIFCAP ; 
 int /*<<< orphan*/  SIOCSIFCAP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__ ifr ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(const char *vname, int value, int s, const struct afswtch *afp)
{
	int flags;

 	if (FUNC2(s, SIOCGIFCAP, (caddr_t)&ifr) < 0) {
 		FUNC0("ioctl (SIOCGIFCAP)");
 		FUNC1(1);
 	}
	flags = ifr.ifr_curcap;
	if (value < 0) {
		value = -value;
		flags &= ~value;
	} else
		flags |= value;
	flags &= ifr.ifr_reqcap;
	ifr.ifr_reqcap = flags;
	if (FUNC2(s, SIOCSIFCAP, (caddr_t)&ifr) < 0)
		FUNC0(vname);
}