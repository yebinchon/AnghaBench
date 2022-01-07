
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int8_t ;
typedef int u_int16_t ;
struct nfqnl_msg_config_cmd {int pf; int command; } ;
struct my_nfattr {int nfa_len; int nfa_type; struct nfqnl_msg_config_cmd* data; } ;
typedef int pcap_t ;
typedef int msg ;


 int AF_UNSPEC ;
 int NFQA_CFG_CMD ;
 int htons (int ) ;
 int nfqueue_send_config_msg (int const*,int ,int ,struct my_nfattr*) ;

__attribute__((used)) static int
nfqueue_send_config_cmd(const pcap_t *handle, uint16_t group_id, u_int8_t cmd, u_int16_t pf)
{
 struct nfqnl_msg_config_cmd msg;
 struct my_nfattr nfa;

 msg.command = cmd;
 msg.pf = htons(pf);

 nfa.data = &msg;
 nfa.nfa_type = NFQA_CFG_CMD;
 nfa.nfa_len = sizeof(msg);

 return nfqueue_send_config_msg(handle, AF_UNSPEC, group_id, &nfa);
}
