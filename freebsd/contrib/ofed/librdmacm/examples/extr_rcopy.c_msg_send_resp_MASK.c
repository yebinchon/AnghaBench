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
typedef  int /*<<< orphan*/  uint32_t ;
struct msg_hdr {int command; int len; int /*<<< orphan*/  id; int /*<<< orphan*/  data; scalar_t__ version; } ;

/* Variables and functions */
 int CMD_RESP ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(int rs, struct msg_hdr *msg, uint32_t status)
{
	struct msg_hdr resp;

	resp.version = 0;
	resp.command = msg->command | CMD_RESP;
	resp.len = sizeof resp;
	resp.data = status;
	resp.id = msg->id;
	FUNC0(rs, (char *) &resp, sizeof resp, 0);
}