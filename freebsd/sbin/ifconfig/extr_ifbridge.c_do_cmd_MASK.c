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
typedef  int /*<<< orphan*/  u_long ;
struct ifdrv {size_t ifd_len; void* ifd_data; int /*<<< orphan*/  ifd_cmd; int /*<<< orphan*/  ifd_name; } ;
typedef  int /*<<< orphan*/  ifd ;
struct TYPE_2__ {int /*<<< orphan*/  ifr_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIOCGDRVSPEC ; 
 int /*<<< orphan*/  SIOCSDRVSPEC ; 
 TYPE_1__ ifr ; 
 int FUNC0 (int,int /*<<< orphan*/ ,struct ifdrv*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifdrv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(int sock, u_long op, void *arg, size_t argsize, int set)
{
	struct ifdrv ifd;

	FUNC1(&ifd, 0, sizeof(ifd));

	FUNC2(ifd.ifd_name, ifr.ifr_name, sizeof(ifd.ifd_name));
	ifd.ifd_cmd = op;
	ifd.ifd_len = argsize;
	ifd.ifd_data = arg;

	return (FUNC0(sock, set ? SIOCSDRVSPEC : SIOCGDRVSPEC, &ifd));
}