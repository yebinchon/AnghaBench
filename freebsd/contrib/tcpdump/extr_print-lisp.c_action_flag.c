
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int lisp_eid_action ;
 int tok2str (int ,char*,int) ;

__attribute__((used)) static void action_flag(netdissect_options *ndo, uint8_t act_auth_inc_res)
{
 uint8_t action;
 uint8_t authoritative;

 authoritative = ((act_auth_inc_res >> 4) & 1);

 if (authoritative)
  ND_PRINT((ndo, " Authoritative,"));
 else
  ND_PRINT((ndo, " Non-Authoritative,"));

 action = act_auth_inc_res >> 5;
 ND_PRINT((ndo, " %s,", tok2str(lisp_eid_action, "unknown", action)));
}
