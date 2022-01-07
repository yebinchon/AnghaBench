
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_teap_pac {int pac_opaque; int pac_opaque_len; } ;


 int eap_teap_parse_hex (char*,int *) ;
 int os_free (int ) ;

__attribute__((used)) static const char * eap_teap_parse_pac_opaque(struct eap_teap_pac *pac,
           char *pos)
{
 os_free(pac->pac_opaque);
 pac->pac_opaque = eap_teap_parse_hex(pos, &pac->pac_opaque_len);
 if (!pac->pac_opaque)
  return "Invalid PAC-Opaque";
 return ((void*)0);
}
