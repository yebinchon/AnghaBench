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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  u_int8_t ;
struct nfulnl_msg_config_cmd {int /*<<< orphan*/  command; } ;
struct my_nfattr {int nfa_len; int /*<<< orphan*/  nfa_type; struct nfulnl_msg_config_cmd* data; } ;
typedef  int /*<<< orphan*/  pcap_t ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  NFULA_CFG_CMD ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct my_nfattr*) ; 

__attribute__((used)) static int
FUNC1(const pcap_t *handle, uint16_t group_id, u_int8_t cmd, u_int8_t family)
{
	struct nfulnl_msg_config_cmd msg;
	struct my_nfattr nfa;

	msg.command = cmd;

	nfa.data = &msg;
	nfa.nfa_type = NFULA_CFG_CMD;
	nfa.nfa_len = sizeof(msg);

	return FUNC0(handle, family, group_id, &nfa);
}