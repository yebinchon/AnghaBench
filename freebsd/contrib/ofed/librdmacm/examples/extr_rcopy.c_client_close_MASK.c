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
struct msg_hdr {int len; int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_CLOSE ; 
 int /*<<< orphan*/  bytes ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  file_addr ; 
 int /*<<< orphan*/  FUNC2 (struct msg_hdr*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,struct msg_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(int rs)
{
	struct msg_hdr msg;
	int ret;

	FUNC5("closing...");
	FUNC1(NULL);
	FUNC2(&msg, 0, sizeof msg);
	msg.command = CMD_CLOSE;
	msg.len = sizeof msg;
	ret = FUNC6(rs, (char *) &msg, msg.len, 0);
	if (ret != msg.len)
		goto out;

	ret = FUNC3(rs, &msg, CMD_CLOSE);
	if (ret)
		goto out;

	FUNC5("done\n");
out:
	FUNC4(file_addr, bytes);
	FUNC0(fd);
	return ret;
}