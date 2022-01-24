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
typedef  int /*<<< orphan*/  u_int32_t ;
struct nfqnl_msg_config_params {int /*<<< orphan*/  copy_mode; int /*<<< orphan*/  copy_range; } ;
struct my_nfattr {int nfa_len; int /*<<< orphan*/  nfa_type; struct nfqnl_msg_config_params* data; } ;
typedef  int /*<<< orphan*/  pcap_t ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  NFQA_CFG_PARAMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct my_nfattr*) ; 

__attribute__((used)) static int
FUNC2(const pcap_t *handle, uint16_t group_id, u_int8_t copy_mode, u_int32_t copy_range)
{
	struct nfqnl_msg_config_params msg;
	struct my_nfattr nfa;

	msg.copy_range = FUNC0(copy_range);
	msg.copy_mode = copy_mode;

	nfa.data = &msg;
	nfa.nfa_type = NFQA_CFG_PARAMS;
	nfa.nfa_len = sizeof(msg);

	return FUNC1(handle, AF_UNSPEC, group_id, &nfa);
}