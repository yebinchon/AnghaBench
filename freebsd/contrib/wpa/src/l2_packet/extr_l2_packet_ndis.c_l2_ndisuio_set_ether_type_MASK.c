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
typedef  int /*<<< orphan*/  proto ;
typedef  int /*<<< orphan*/  USHORT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  IOCTL_NDISUIO_SET_ETHER_TYPE ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC5(unsigned short protocol)
{
	USHORT proto = FUNC3(protocol);
	DWORD written;

	if (!FUNC0(FUNC2(),
			     IOCTL_NDISUIO_SET_ETHER_TYPE, &proto,
			     sizeof(proto), NULL, 0, &written, NULL)) {
		FUNC4(MSG_ERROR, "L2(NDISUIO): "
			   "IOCTL_NDISUIO_SET_ETHER_TYPE failed: %d",
			   (int) FUNC1());
		return -1;
	}

	return 0;
}