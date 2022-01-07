
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_fast_pac {int * i_id; int i_id_len; } ;


 int * eap_fast_parse_hex (char*,int *) ;
 int os_free (int *) ;

__attribute__((used)) static const char * eap_fast_parse_i_id(struct eap_fast_pac *pac, char *pos)
{
 os_free(pac->i_id);
 pac->i_id = eap_fast_parse_hex(pos, &pac->i_id_len);
 if (pac->i_id == ((void*)0))
  return "Invalid I-ID";
 return ((void*)0);
}
