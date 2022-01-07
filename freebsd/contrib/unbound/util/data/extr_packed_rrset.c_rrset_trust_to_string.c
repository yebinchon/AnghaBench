
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rrset_trust { ____Placeholder_rrset_trust } rrset_trust ;
const char*
rrset_trust_to_string(enum rrset_trust s)
{
 switch(s) {
 case 132: return "rrset_trust_none";
 case 139: return "rrset_trust_add_noAA";
 case 135: return "rrset_trust_auth_noAA";
 case 140: return "rrset_trust_add_AA";
 case 133:return "rrset_trust_nonauth_ans_AA";
 case 137: return "rrset_trust_ans_noAA";
 case 134: return "rrset_trust_glue";
 case 136: return "rrset_trust_auth_AA";
 case 138: return "rrset_trust_ans_AA";
 case 130: return "rrset_trust_sec_noglue";
 case 131: return "rrset_trust_prim_noglue";
 case 128: return "rrset_trust_validated";
 case 129: return "rrset_trust_ultimate";
 }
 return "unknown_rrset_trust_value";
}
