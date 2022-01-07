
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_teap_pac {int pac_type; } ;


 int PAC_TYPE_TUNNEL_PAC ;
 struct eap_teap_pac* os_zalloc (int) ;

__attribute__((used)) static const char * eap_teap_parse_start(struct eap_teap_pac **pac)
{
 if (*pac)
  return "START line without END";

 *pac = os_zalloc(sizeof(struct eap_teap_pac));
 if (!(*pac))
  return "No memory for PAC entry";
 (*pac)->pac_type = PAC_TYPE_TUNNEL_PAC;
 return ((void*)0);
}
