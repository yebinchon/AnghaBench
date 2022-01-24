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
struct ifreq {int ifr_flags; int ifr_flagshigh; int /*<<< orphan*/  ifr_name; } ;
struct afswtch {int dummy; } ;
typedef  int /*<<< orphan*/  my_ifr ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  SIOCSIFFLAGS ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(const char *vname, int value, int s, const struct afswtch *afp)
{
	struct ifreq		my_ifr;
	int flags;

	flags = FUNC1(name, s);
	if (value < 0) {
		value = -value;
		flags &= ~value;
	} else
		flags |= value;
	FUNC3(&my_ifr, 0, sizeof(my_ifr));
	(void) FUNC4(my_ifr.ifr_name, name, sizeof(my_ifr.ifr_name));
	my_ifr.ifr_flags = flags & 0xffff;
	my_ifr.ifr_flagshigh = flags >> 16;
	if (FUNC2(s, SIOCSIFFLAGS, (caddr_t)&my_ifr) < 0)
		FUNC0(vname);
}