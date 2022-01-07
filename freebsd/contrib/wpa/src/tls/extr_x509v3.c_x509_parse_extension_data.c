
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct x509_certificate {int dummy; } ;
struct asn1_oid {int* oid; } ;


 int x509_id_ce_oid (struct asn1_oid*) ;
 int x509_parse_ext_basic_constraints (struct x509_certificate*,int const*,size_t) ;
 int x509_parse_ext_ext_key_usage (struct x509_certificate*,int const*,size_t) ;
 int x509_parse_ext_issuer_alt_name (struct x509_certificate*,int const*,size_t) ;
 int x509_parse_ext_key_usage (struct x509_certificate*,int const*,size_t) ;
 int x509_parse_ext_subject_alt_name (struct x509_certificate*,int const*,size_t) ;

__attribute__((used)) static int x509_parse_extension_data(struct x509_certificate *cert,
         struct asn1_oid *oid,
         const u8 *pos, size_t len)
{
 if (!x509_id_ce_oid(oid))
  return 1;







 switch (oid->oid[3]) {
 case 15:
  return x509_parse_ext_key_usage(cert, pos, len);
 case 17:
  return x509_parse_ext_subject_alt_name(cert, pos, len);
 case 18:
  return x509_parse_ext_issuer_alt_name(cert, pos, len);
 case 19:
  return x509_parse_ext_basic_constraints(cert, pos, len);
 case 37:
  return x509_parse_ext_ext_key_usage(cert, pos, len);
 default:
  return 1;
 }
}
