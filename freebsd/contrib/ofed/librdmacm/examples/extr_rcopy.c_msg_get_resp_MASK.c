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
typedef  int uint8_t ;
struct msg_hdr {int len; int command; int data; } ;

/* Variables and functions */
 int CMD_RESP ; 
 int FUNC0 (int,struct msg_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 

__attribute__((used)) static int FUNC2(int rs, struct msg_hdr *msg, uint8_t cmd)
{
	int ret;

	ret = FUNC0(rs, msg);
	if (ret != sizeof *msg)
		return ret;

	if ((msg->len != sizeof *msg) || (msg->command != (cmd | CMD_RESP))) {
		FUNC1("invalid length %d or bad command response %x:%x\n",
		       msg->len, msg->command, cmd | CMD_RESP);
		return -1;
	}

	return msg->data;
}