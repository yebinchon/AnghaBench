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
struct TYPE_2__ {int len; int /*<<< orphan*/  command; } ;
struct msg_write {TYPE_1__ hdr; int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_WRITE ; 
 int /*<<< orphan*/  bytes ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct msg_write*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int,struct msg_write*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(int rs)
{
	struct msg_write msg;
	int ret;

	FUNC2("transferring");
	FUNC0(NULL);
	FUNC1(&msg, 0, sizeof msg);
	msg.hdr.command = CMD_WRITE;
	msg.hdr.len = sizeof(msg);
	msg.size = bytes;

	ret = FUNC3(rs, &msg, sizeof msg, 0);
	if (ret != msg.hdr.len)
		return ret;

	return 0;
}