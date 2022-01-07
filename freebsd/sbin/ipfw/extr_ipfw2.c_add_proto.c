
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int ipfw_insn ;


 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 int O_IP4 ;
 int O_IP6 ;
 scalar_t__ _substrcmp (char*,char*) ;
 int * add_proto0 (int *,char*,int *) ;
 int fill_cmd (int *,int ,int ,int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static ipfw_insn *
add_proto(ipfw_insn *cmd, char *av, u_char *protop)
{
 u_char proto = IPPROTO_IP;

 if (_substrcmp(av, "all") == 0 || strcmp(av, "ip") == 0)
  ;
 else if (strcmp(av, "ip4") == 0)

  fill_cmd(cmd, O_IP4, 0, 0);
 else if (strcmp(av, "ip6") == 0) {

  proto = IPPROTO_IPV6;
  fill_cmd(cmd, O_IP6, 0, 0);
 } else
  return add_proto0(cmd, av, protop);

 *protop = proto;
 return cmd;
}
