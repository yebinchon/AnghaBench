
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ServerOpCodes ;


 char const* fmt_multistate_int (int,int ) ;
 int multistate_addressfamily ;
 int multistate_compression ;
 int multistate_gatewayports ;
 int multistate_permitrootlogin ;
 int multistate_tcpfwd ;







 char const* ssh_digest_alg_name (int) ;

__attribute__((used)) static const char *
fmt_intarg(ServerOpCodes code, int val)
{
 if (val == -1)
  return "unset";
 switch (code) {
 case 134:
  return fmt_multistate_int(val, multistate_addressfamily);
 case 128:
  return fmt_multistate_int(val, multistate_permitrootlogin);
 case 129:
  return fmt_multistate_int(val, multistate_gatewayports);
 case 131:
  return fmt_multistate_int(val, multistate_compression);
 case 132:
  return fmt_multistate_int(val, multistate_tcpfwd);
 case 133:
  return fmt_multistate_int(val, multistate_tcpfwd);
 case 130:
  return ssh_digest_alg_name(val);
 default:
  switch (val) {
  case 0:
   return "no";
  case 1:
   return "yes";
  default:
   return "UNKNOWN";
  }
 }
}
