
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int16_t ;
struct my_nfattr {int dummy; } ;
typedef int pcap_t ;


 int NFNL_SUBSYS_QUEUE ;
 int NFQNL_MSG_CONFIG ;
 int netfilter_send_config_msg (int const*,int,int,int ,int ,struct my_nfattr const*) ;

__attribute__((used)) static int
nfqueue_send_config_msg(const pcap_t *handle, uint8_t family, u_int16_t group_id, const struct my_nfattr *mynfa)
{
 return netfilter_send_config_msg(handle, (NFNL_SUBSYS_QUEUE << 8) | NFQNL_MSG_CONFIG, 1, family, group_id, mynfa);
}
