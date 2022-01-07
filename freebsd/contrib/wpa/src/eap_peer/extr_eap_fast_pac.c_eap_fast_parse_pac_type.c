
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_fast_pac {scalar_t__ pac_type; } ;


 scalar_t__ PAC_TYPE_MACHINE_AUTHENTICATION ;
 scalar_t__ PAC_TYPE_TUNNEL_PAC ;
 scalar_t__ PAC_TYPE_USER_AUTHORIZATION ;
 scalar_t__ atoi (char*) ;

__attribute__((used)) static const char * eap_fast_parse_pac_type(struct eap_fast_pac *pac,
         char *pos)
{
 if (!pos)
  return "Cannot parse pac type";
 pac->pac_type = atoi(pos);
 if (pac->pac_type != PAC_TYPE_TUNNEL_PAC &&
     pac->pac_type != PAC_TYPE_USER_AUTHORIZATION &&
     pac->pac_type != PAC_TYPE_MACHINE_AUTHENTICATION)
  return "Unrecognized PAC-Type";

 return ((void*)0);
}
