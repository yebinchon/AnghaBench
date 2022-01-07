
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_fast_pac {int * pac_opaque; int pac_opaque_len; } ;


 int * eap_fast_parse_hex (char*,int *) ;
 int os_free (int *) ;

__attribute__((used)) static const char * eap_fast_parse_pac_opaque(struct eap_fast_pac *pac,
           char *pos)
{
 os_free(pac->pac_opaque);
 pac->pac_opaque = eap_fast_parse_hex(pos, &pac->pac_opaque_len);
 if (pac->pac_opaque == ((void*)0))
  return "Invalid PAC-Opaque";
 return ((void*)0);
}
