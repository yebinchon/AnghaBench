
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OpCodes ;


 char const* fmt_multistate_int (int,int ) ;
 int multistate_addressfamily ;
 int multistate_canonicalizehostname ;
 int multistate_controlmaster ;
 int multistate_requesttty ;
 int multistate_strict_hostkey ;
 int multistate_tunnel ;
 int multistate_yesnoask ;
 int multistate_yesnoaskconfirm ;
 char const* ssh_digest_alg_name (int) ;

__attribute__((used)) static const char *
fmt_intarg(OpCodes code, int val)
{
 if (val == -1)
  return "unset";
 switch (code) {
 case 136:
  return fmt_multistate_int(val, multistate_addressfamily);
 case 128:
 case 129:
  return fmt_multistate_int(val, multistate_yesnoask);
 case 131:
  return fmt_multistate_int(val, multistate_strict_hostkey);
 case 134:
  return fmt_multistate_int(val, multistate_controlmaster);
 case 130:
  return fmt_multistate_int(val, multistate_tunnel);
 case 132:
  return fmt_multistate_int(val, multistate_requesttty);
 case 135:
  return fmt_multistate_int(val, multistate_canonicalizehostname);
 case 137:
  return fmt_multistate_int(val, multistate_yesnoaskconfirm);
 case 133:
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
