
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int8_t ;
typedef int u_int32_t ;
struct nfulnl_msg_config_mode {int copy_mode; int copy_range; } ;
struct my_nfattr {int nfa_len; int nfa_type; struct nfulnl_msg_config_mode* data; } ;
typedef int pcap_t ;
typedef int msg ;


 int AF_UNSPEC ;
 int NFULA_CFG_MODE ;
 int htonl (int ) ;
 int nflog_send_config_msg (int const*,int ,int ,struct my_nfattr*) ;

__attribute__((used)) static int
nflog_send_config_mode(const pcap_t *handle, uint16_t group_id, u_int8_t copy_mode, u_int32_t copy_range)
{
 struct nfulnl_msg_config_mode msg;
 struct my_nfattr nfa;

 msg.copy_range = htonl(copy_range);
 msg.copy_mode = copy_mode;

 nfa.data = &msg;
 nfa.nfa_type = NFULA_CFG_MODE;
 nfa.nfa_len = sizeof(msg);

 return nflog_send_config_msg(handle, AF_UNSPEC, group_id, &nfa);
}
