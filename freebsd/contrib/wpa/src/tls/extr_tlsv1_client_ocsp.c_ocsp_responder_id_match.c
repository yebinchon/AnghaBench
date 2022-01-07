
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct x509_name {int dummy; } ;
struct x509_certificate {size_t public_key_len; int subject; int const* public_key; } ;


 int SHA1_MAC_LEN ;
 scalar_t__ os_memcmp (int *,int const*,int) ;
 scalar_t__ sha1_vector (int,int const**,size_t*,int *) ;
 scalar_t__ x509_name_compare (int *,struct x509_name*) ;

__attribute__((used)) static int ocsp_responder_id_match(struct x509_certificate *signer,
       struct x509_name *name, const u8 *key_hash)
{
 if (key_hash) {
  u8 hash[SHA1_MAC_LEN];
  const u8 *addr[1] = { signer->public_key };
  size_t len[1] = { signer->public_key_len };

  if (sha1_vector(1, addr, len, hash) < 0)
   return 0;
  return os_memcmp(hash, key_hash, SHA1_MAC_LEN) == 0;
 }

 return x509_name_compare(&signer->subject, name) == 0;
}
