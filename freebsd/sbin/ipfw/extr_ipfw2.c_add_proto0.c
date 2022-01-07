
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct protoent {int p_proto; } ;
typedef int ipfw_insn ;


 int O_PROTO ;
 int fill_cmd (int *,int ,int ,int) ;
 struct protoent* getprotobyname (char*) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static ipfw_insn *
add_proto0(ipfw_insn *cmd, char *av, u_char *protop)
{
 struct protoent *pe;
 char *ep;
 int proto;

 proto = strtol(av, &ep, 10);
 if (*ep != '\0' || proto <= 0) {
  if ((pe = getprotobyname(av)) == ((void*)0))
   return ((void*)0);
  proto = pe->p_proto;
 }

 fill_cmd(cmd, O_PROTO, 0, proto);
 *protop = proto;
 return cmd;
}
