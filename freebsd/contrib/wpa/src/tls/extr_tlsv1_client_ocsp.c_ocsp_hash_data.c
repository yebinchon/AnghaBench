
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct asn1_oid {int dummy; } ;
typedef int buf ;


 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int asn1_oid_to_str (struct asn1_oid*,char*,int) ;
 scalar_t__ sha1_vector (int,int const**,size_t*,int *) ;
 scalar_t__ sha256_vector (int,int const**,size_t*,int *) ;
 scalar_t__ sha384_vector (int,int const**,size_t*,int *) ;
 scalar_t__ sha512_vector (int,int const**,size_t*,int *) ;
 int wpa_hexdump (int ,char*,int *,int) ;
 int wpa_printf (int ,char*,char*) ;
 scalar_t__ x509_sha1_oid (struct asn1_oid*) ;
 scalar_t__ x509_sha256_oid (struct asn1_oid*) ;
 scalar_t__ x509_sha384_oid (struct asn1_oid*) ;
 scalar_t__ x509_sha512_oid (struct asn1_oid*) ;

__attribute__((used)) static unsigned int ocsp_hash_data(struct asn1_oid *alg, const u8 *data,
       size_t data_len, u8 *hash)
{
 const u8 *addr[1] = { data };
 size_t len[1] = { data_len };
 char buf[100];

 if (x509_sha1_oid(alg)) {
  if (sha1_vector(1, addr, len, hash) < 0)
   return 0;
  wpa_hexdump(MSG_MSGDUMP, "OCSP: Hash (SHA1)", hash, 20);
  return 20;
 }

 if (x509_sha256_oid(alg)) {
  if (sha256_vector(1, addr, len, hash) < 0)
   return 0;
  wpa_hexdump(MSG_MSGDUMP, "OCSP: Hash (SHA256)", hash, 32);
  return 32;
 }

 if (x509_sha384_oid(alg)) {
  if (sha384_vector(1, addr, len, hash) < 0)
   return 0;
  wpa_hexdump(MSG_MSGDUMP, "OCSP: Hash (SHA384)", hash, 48);
  return 48;
 }

 if (x509_sha512_oid(alg)) {
  if (sha512_vector(1, addr, len, hash) < 0)
   return 0;
  wpa_hexdump(MSG_MSGDUMP, "OCSP: Hash (SHA512)", hash, 64);
  return 64;
 }


 asn1_oid_to_str(alg, buf, sizeof(buf));
 wpa_printf(MSG_DEBUG, "OCSP: Could not calculate hash with alg %s",
     buf);
 return 0;
}
