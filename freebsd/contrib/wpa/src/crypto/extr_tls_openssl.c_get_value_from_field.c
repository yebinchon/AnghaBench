
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_dn_field_order_cnt {int email; int ou; int o; int st; int l; int c; int cn; } ;
typedef int X509 ;


 int MSG_ERROR ;
 int NID_commonName ;
 int NID_countryName ;
 int NID_localityName ;
 int NID_organizationName ;
 int NID_organizationalUnitName ;
 int NID_pkcs9_emailAddress ;
 int NID_stateOrProvinceName ;
 int match_dn_field (int const*,int,char*,char*,struct tls_dn_field_order_cnt*) ;
 scalar_t__ os_strcmp (char*,char*) ;
 char* str_token (char*,char*,char**) ;
 int wpa_printf (int ,char*,char*) ;

__attribute__((used)) static int get_value_from_field(const X509 *cert, char *field_str,
    struct tls_dn_field_order_cnt *dn_cnt)
{
 int nid;
 char *context = ((void*)0), *name, *value;

 if (os_strcmp(field_str, "*") == 0)
  return 1;

 name = str_token(field_str, "=", &context);
 if (!name)
  return 0;



 if (os_strcmp(name, "CN") == 0) {
  nid = NID_commonName;
  dn_cnt->cn++;
 } else if(os_strcmp(name, "C") == 0) {
  nid = NID_countryName;
  dn_cnt->c++;
 } else if (os_strcmp(name, "L") == 0) {
  nid = NID_localityName;
  dn_cnt->l++;
 } else if (os_strcmp(name, "ST") == 0) {
  nid = NID_stateOrProvinceName;
  dn_cnt->st++;
 } else if (os_strcmp(name, "O") == 0) {
  nid = NID_organizationName;
  dn_cnt->o++;
 } else if (os_strcmp(name, "OU") == 0) {
  nid = NID_organizationalUnitName;
  dn_cnt->ou++;
 } else if (os_strcmp(name, "emailAddress") == 0) {
  nid = NID_pkcs9_emailAddress;
  dn_cnt->email++;
 } else {
  wpa_printf(MSG_ERROR,
   "TLS: Unknown field '%s' in check_cert_subject", name);
  return 0;
 }

 value = str_token(field_str, "=", &context);
 if (!value) {
  wpa_printf(MSG_ERROR,
      "TLS: Distinguished Name field '%s' value is not defined in check_cert_subject",
      name);
  return 0;
 }

 return match_dn_field(cert, nid, name, value, dn_cnt);
}
