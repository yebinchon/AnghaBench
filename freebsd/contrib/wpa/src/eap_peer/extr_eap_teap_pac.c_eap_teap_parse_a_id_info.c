
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_teap_pac {int a_id_info; int a_id_info_len; } ;


 int eap_teap_parse_hex (char*,int *) ;
 int os_free (int ) ;

__attribute__((used)) static const char * eap_teap_parse_a_id_info(struct eap_teap_pac *pac,
          char *pos)
{
 os_free(pac->a_id_info);
 pac->a_id_info = eap_teap_parse_hex(pos, &pac->a_id_info_len);
 if (!pac->a_id_info)
  return "Invalid A-ID-Info";
 return ((void*)0);
}
