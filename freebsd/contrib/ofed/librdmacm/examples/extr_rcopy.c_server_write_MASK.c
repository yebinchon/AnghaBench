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
struct msg_write {int dummy; } ;
struct msg_hdr {int len; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  PROT_WRITE ; 
 void* FUNC0 (int,void*,size_t) ; 
 size_t bytes ; 
 int errno ; 
 scalar_t__ fd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* file_addr ; 
 int FUNC2 (scalar_t__,size_t) ; 
 void* FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,struct msg_hdr*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int FUNC6(int rs, struct msg_hdr *msg)
{
	size_t len;
	int ret;

	FUNC5("transferring");
	FUNC1(NULL);
	if (fd <= 0) {
		FUNC5("...file not opened\n");
		ret = EINVAL;
		goto out;
	}

	if (msg->len != sizeof(struct msg_write)) {
		FUNC5("...invalid message length %d\n", msg->len);
		ret = EINVAL;
		goto out;
	}

	ret = FUNC0(rs, (char *) &bytes, sizeof bytes);
	if (ret != sizeof bytes)
		goto out;

	ret = FUNC2(fd, bytes);
	if (ret)
		goto out;

	file_addr = FUNC3(NULL, bytes, PROT_WRITE, MAP_SHARED, fd, 0);
	if (file_addr == (void *) -1) {
		FUNC5("...error mapping file\n");
		ret = errno;
		goto out;
	}

	FUNC5("...%lld bytes...", (long long) bytes);
	FUNC1(NULL);
	len = FUNC0(rs, file_addr, bytes);
	if (len != bytes) {
		FUNC5("...error receiving data\n");
		ret = (int) len;
	}
out:
	FUNC4(rs, msg, ret);
	return ret;
}