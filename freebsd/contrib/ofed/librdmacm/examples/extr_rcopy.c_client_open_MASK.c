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
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct stat {scalar_t__ st_mode; scalar_t__ st_size; } ;
struct TYPE_2__ {int len; int data; int /*<<< orphan*/  command; } ;
struct msg_open {TYPE_1__ hdr; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_OPEN ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 scalar_t__ bytes ; 
 struct msg_open* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  dst_file ; 
 int errno ; 
 scalar_t__ fd ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* file_addr ; 
 int /*<<< orphan*/  FUNC3 (struct msg_open*) ; 
 int FUNC4 (scalar_t__,struct stat*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (int,struct msg_open*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  src_file ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(int rs)
{
	struct msg_open *msg;
	struct stat stats;
	uint32_t len;
	int ret;

	FUNC9("opening...");
	FUNC2(NULL);
	fd = FUNC8(src_file, O_RDONLY);
	if (fd < 0)
		return fd;

	ret = FUNC4(fd, &stats);
	if (ret < 0)
		goto err1;

	bytes = (uint64_t) stats.st_size;
	file_addr = FUNC5(NULL, bytes, PROT_READ, MAP_SHARED, fd, 0);
	if (file_addr == (void *) -1) {
		ret = errno;
		goto err1;
	}

	len = (((uint32_t) FUNC12(dst_file)) + 8) & 0xFFFFFFF8;
	msg = FUNC0(1, sizeof(*msg) + len);
	if (!msg) {
		ret = -1;
		goto err2;
	}

	msg->hdr.command = CMD_OPEN;
	msg->hdr.len = sizeof(*msg) + len;
	msg->hdr.data = (uint32_t) stats.st_mode;
	FUNC11(msg->path, dst_file);
	ret = FUNC10(rs, msg, msg->hdr.len, 0);
	if (ret != msg->hdr.len)
		goto err3;

	ret = FUNC6(rs, &msg->hdr, CMD_OPEN);
	if (ret)
		goto err3;

	return 0;

err3:
	FUNC3(msg);
err2:
	FUNC7(file_addr, bytes);
err1:
	FUNC1(fd);
	return ret;
}