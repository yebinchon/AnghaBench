
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_oid ;
typedef int PBE_string2key_func ;
typedef int EVP_MD ;
typedef int EVP_CIPHER ;


 int ASN1_OID_ID_PBEWITHSHAAND128BITRC2_CBC ;
 int ASN1_OID_ID_PBEWITHSHAAND128BITRC4 ;
 int ASN1_OID_ID_PBEWITHSHAAND3_KEYTRIPLEDES_CBC ;
 int ASN1_OID_ID_PBEWITHSHAAND40BITRC2_CBC ;
 int ASN1_OID_ID_PBEWITHSHAAND40BITRC4 ;
 int const* ASN1_OID_ID_PKCS3_DES_EDE3_CBC ;
 int const* ASN1_OID_ID_PKCS3_RC2_CBC ;
 int const* ASN1_OID_ID_PKCS3_RC4 ;
 int * EVP_des_ede3_cbc () ;
 int * EVP_rc2_40_cbc () ;
 int * EVP_rc2_cbc () ;
 int * EVP_rc4 () ;
 int * EVP_rc4_40 () ;
 int * EVP_sha1 () ;
 int PBE_string2key ;
 int const asn1_oid_private_rc2_40 ;
 scalar_t__ der_heim_oid_cmp (int const*,int ) ;

__attribute__((used)) static const heim_oid *
find_string2key(const heim_oid *oid,
  const EVP_CIPHER **c,
  const EVP_MD **md,
  PBE_string2key_func *s2k)
{
    if (der_heim_oid_cmp(oid, ASN1_OID_ID_PBEWITHSHAAND40BITRC2_CBC) == 0) {
 *c = EVP_rc2_40_cbc();
 *md = EVP_sha1();
 *s2k = PBE_string2key;
 return &asn1_oid_private_rc2_40;
    } else if (der_heim_oid_cmp(oid, ASN1_OID_ID_PBEWITHSHAAND128BITRC2_CBC) == 0) {
 *c = EVP_rc2_cbc();
 *md = EVP_sha1();
 *s2k = PBE_string2key;
 return ASN1_OID_ID_PKCS3_RC2_CBC;
    } else if (der_heim_oid_cmp(oid, ASN1_OID_ID_PBEWITHSHAAND3_KEYTRIPLEDES_CBC) == 0) {
 *c = EVP_des_ede3_cbc();
 *md = EVP_sha1();
 *s2k = PBE_string2key;
 return ASN1_OID_ID_PKCS3_DES_EDE3_CBC;
    }

    return ((void*)0);
}
