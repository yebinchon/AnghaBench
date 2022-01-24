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
typedef  int /*<<< orphan*/  dev_file ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int,...) ; 
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  IB_USER_MAD_ENABLE_PKEY ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 char* UMAD_DEV_DIR ; 
 int UMAD_DEV_FILE_SZ ; 
 int abi_version ; 
 int FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int new_user_mad_api ; 
 int FUNC4 (char*,int) ; 
 char* FUNC5 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(const char *ca_name, int portnum)
{
	char dev_file[UMAD_DEV_FILE_SZ];
	int umad_id, fd;

	FUNC1("ca %s port %d", ca_name, portnum);

	if (!(ca_name = FUNC5(ca_name, &portnum)))
		return -ENODEV;

	FUNC0("opening %s port %d", ca_name, portnum);

	if ((umad_id = FUNC2(ca_name, portnum)) < 0)
		return -EINVAL;

	FUNC6(dev_file, sizeof(dev_file), "%s/umad%d",
		 UMAD_DEV_DIR, umad_id);

	if ((fd = FUNC4(dev_file, O_RDWR | O_NONBLOCK)) < 0) {
		FUNC0("open %s failed: %s", dev_file, FUNC7(errno));
		return -EIO;
	}

	if (abi_version > 5 || !FUNC3(fd, IB_USER_MAD_ENABLE_PKEY, NULL))
		new_user_mad_api = 1;
	else
		new_user_mad_api = 0;

	FUNC0("opened %s fd %d portid %d", dev_file, fd, umad_id);
	return fd;
}