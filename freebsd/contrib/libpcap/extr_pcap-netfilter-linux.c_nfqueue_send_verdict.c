
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int32_t ;
struct nfqnl_msg_verdict_hdr {void* verdict; void* id; } ;
struct my_nfattr {int nfa_len; int nfa_type; struct nfqnl_msg_verdict_hdr* data; } ;
typedef int pcap_t ;
typedef int msg ;


 int AF_UNSPEC ;
 int NFNL_SUBSYS_QUEUE ;
 int NFQA_VERDICT_HDR ;
 int NFQNL_MSG_VERDICT ;
 void* htonl (int ) ;
 int netfilter_send_config_msg (int const*,int,int ,int ,int ,struct my_nfattr*) ;

__attribute__((used)) static int
nfqueue_send_verdict(const pcap_t *handle, uint16_t group_id, u_int32_t id, u_int32_t verdict)
{
 struct nfqnl_msg_verdict_hdr msg;
 struct my_nfattr nfa;

 msg.id = htonl(id);
 msg.verdict = htonl(verdict);

 nfa.data = &msg;
 nfa.nfa_type = NFQA_VERDICT_HDR;
 nfa.nfa_len = sizeof(msg);

 return netfilter_send_config_msg(handle, (NFNL_SUBSYS_QUEUE << 8) | NFQNL_MSG_VERDICT, 0, AF_UNSPEC, group_id, &nfa);
}
