
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nlattr {int dummy; } ;
struct nl_msg {int dummy; } ;


 int MACSEC_ATTR_RXSC_CONFIG ;
 int MACSEC_RXSC_ATTR_SCI ;
 int NLA_PUT_U64 (struct nl_msg*,int ,int ) ;
 int nla_nest_end (struct nl_msg*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct nl_msg*,int ) ;

__attribute__((used)) static int nla_put_rxsc_config(struct nl_msg *msg, u64 sci)
{
 struct nlattr *nest = nla_nest_start(msg, MACSEC_ATTR_RXSC_CONFIG);

 if (!nest)
  return -1;

 NLA_PUT_U64(msg, MACSEC_RXSC_ATTR_SCI, sci);

 nla_nest_end(msg, nest);

 return 0;

nla_put_failure:
 return -1;
}
