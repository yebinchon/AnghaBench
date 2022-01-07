
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int8_t ;
struct nfulnl_msg_config_cmd {int command; } ;
struct my_nfattr {int nfa_len; int nfa_type; struct nfulnl_msg_config_cmd* data; } ;
typedef int pcap_t ;
typedef int msg ;


 int NFULA_CFG_CMD ;
 int nflog_send_config_msg (int const*,int ,int ,struct my_nfattr*) ;

__attribute__((used)) static int
nflog_send_config_cmd(const pcap_t *handle, uint16_t group_id, u_int8_t cmd, u_int8_t family)
{
 struct nfulnl_msg_config_cmd msg;
 struct my_nfattr nfa;

 msg.command = cmd;

 nfa.data = &msg;
 nfa.nfa_type = NFULA_CFG_CMD;
 nfa.nfa_len = sizeof(msg);

 return nflog_send_config_msg(handle, family, group_id, &nfa);
}
