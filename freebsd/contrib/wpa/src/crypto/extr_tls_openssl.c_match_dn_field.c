
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_dn_field_order_cnt {int dummy; } ;
typedef int X509_NAME_ENTRY ;
typedef int X509_NAME ;
typedef int X509 ;
typedef int ASN1_STRING ;


 int ASN1_STRING_get0_data (int *) ;
 int ASN1_STRING_length (int *) ;
 int MSG_ERROR ;
 int * X509_NAME_ENTRY_get_data (int *) ;
 int * X509_NAME_get_entry (int *,int) ;
 int X509_NAME_get_index_by_NID (int *,int,int) ;
 int * X509_get_subject_name (int *) ;
 int get_dn_field_index (struct tls_dn_field_order_cnt const*,int) ;
 scalar_t__ os_memcmp (int ,char const*,int) ;
 int os_strlen (char const*) ;
 int wpa_printf (int ,char*,char const*,char const*,int ) ;

__attribute__((used)) static int match_dn_field(const X509 *cert, int nid, const char *field,
     const char *value,
     const struct tls_dn_field_order_cnt *dn_cnt)
{
 int i, ret = 0, len, config_dn_field_index, match_index = 0;
 X509_NAME *name;

 len = os_strlen(value);
 name = X509_get_subject_name((X509 *) cert);



 config_dn_field_index = get_dn_field_index(dn_cnt, nid);
 if (config_dn_field_index < 0)
  return 0;


 for (i = -1; (i = X509_NAME_get_index_by_NID(name, nid, i)) > -1;) {
  X509_NAME_ENTRY *e;
  ASN1_STRING *cn;

  e = X509_NAME_get_entry(name, i);
  if (!e)
   continue;

  cn = X509_NAME_ENTRY_get_data(e);
  if (!cn)
   continue;

  match_index++;


  if (match_index != config_dn_field_index)
   continue;





  if (len > 0 && value[len - 1] == '*') {



   ret = ASN1_STRING_length(cn) >= len - 1 &&
    os_memcmp(ASN1_STRING_get0_data(cn), value,
       len - 1) == 0;
  } else {


   ret = ASN1_STRING_length(cn) == len &&
    os_memcmp(ASN1_STRING_get0_data(cn), value,
       len) == 0;
  }
  if (!ret) {
   wpa_printf(MSG_ERROR,
       "OpenSSL: Failed to match %s '%s' with certificate DN field value '%s'",
       field, value, ASN1_STRING_get0_data(cn));
  }
  break;
 }

 return ret;
}
