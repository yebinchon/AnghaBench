
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_dn_field_order_cnt {int dummy; } ;
typedef int field ;
typedef int dn_cnt ;
typedef int X509 ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 char* cstr_token (char const*,char*,char const**) ;
 int get_value_from_field (int *,char*,struct tls_dn_field_order_cnt*) ;
 int os_memcpy (char*,char const*,int) ;
 int os_memset (struct tls_dn_field_order_cnt*,int ,int) ;
 int wpa_printf (int ,char*,char const*) ;

__attribute__((used)) static int tls_match_dn_field(X509 *cert, const char *match)
{
 const char *token, *last = ((void*)0);
 char field[256];
 struct tls_dn_field_order_cnt dn_cnt;

 os_memset(&dn_cnt, 0, sizeof(dn_cnt));




 while ((token = cstr_token(match, "/", &last))) {
  if (last - token >= (int) sizeof(field)) {
   wpa_printf(MSG_ERROR,
       "OpenSSL: Too long DN matching field value in '%s'",
       match);
   return 0;
  }
  os_memcpy(field, token, last - token);
  field[last - token] = '\0';

  if (!get_value_from_field(cert, field, &dn_cnt)) {
   wpa_printf(MSG_DEBUG, "OpenSSL: No match for DN '%s'",
       field);
   return 0;
  }
 }

 return 1;
}
