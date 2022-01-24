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
struct TYPE_3__ {int ipfo_size; scalar_t__ ipfo_offset; int /*<<< orphan*/ * ipfo_ptr; int /*<<< orphan*/  ipfo_type; int /*<<< orphan*/  ipfo_rev; } ;
typedef  TYPE_1__ ipfobj_t ;
typedef  int /*<<< orphan*/  friostat_t ;
typedef  int /*<<< orphan*/  fio ;

/* Variables and functions */
 int /*<<< orphan*/  IPFILTER_VERSION ; 
 int /*<<< orphan*/  IPFOBJ_IPFSTAT ; 
 int /*<<< orphan*/  SIOCFRZST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  fd ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ipfname ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5()
{
	ipfobj_t	obj;
	friostat_t	fio;

	obj.ipfo_rev = IPFILTER_VERSION;
	obj.ipfo_type = IPFOBJ_IPFSTAT;
	obj.ipfo_size = sizeof(fio);
	obj.ipfo_ptr = &fio;
	obj.ipfo_offset = 0;

	if (FUNC3(ipfname, 1) != -2) {
		if (FUNC1(fd, SIOCFRZST, &obj) == -1) {
			FUNC2(fd, "ioctl(SIOCFRZST)");
			FUNC0(-1);
		}
		FUNC4(&fio);
	}

}