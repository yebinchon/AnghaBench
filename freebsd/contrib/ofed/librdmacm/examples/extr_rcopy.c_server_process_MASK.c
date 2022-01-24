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
struct msg_hdr {int command; } ;

/* Variables and functions */
#define  CMD_CLOSE 130 
#define  CMD_OPEN 129 
#define  CMD_WRITE 128 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int,struct msg_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct msg_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,struct msg_hdr*) ; 
 int FUNC3 (int,struct msg_hdr*) ; 
 int FUNC4 (int,struct msg_hdr*) ; 

__attribute__((used)) static void FUNC5(int rs)
{
	struct msg_hdr msg;
	int ret;

	do {
		ret = FUNC0(rs, &msg);
		if (ret != sizeof msg)
			break;

		switch (msg.command) {
		case CMD_OPEN:
			ret = FUNC3(rs, &msg);
			break;
		case CMD_CLOSE:
			FUNC2(rs, &msg);
			ret = 0;
			break;
		case CMD_WRITE:
			ret = FUNC4(rs, &msg);
			break;
		default:
			FUNC1(rs, &msg, EINVAL);
			ret = -1;
			break;
		}

	} while (!ret);
}