
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int buf ;
typedef int EVP_PKEY ;
typedef int EC_KEY ;


 int EC_KEY_free (int *) ;
 int * EC_KEY_new_by_curve_name (int ) ;
 int EVP_PKEY_assign_EC_KEY (int *,int *) ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_new () ;
 scalar_t__ LDNS_ECDSAP256SHA256 ;
 scalar_t__ LDNS_ECDSAP384SHA384 ;
 int NID_X9_62_prime256v1 ;
 int NID_secp384r1 ;
 unsigned char POINT_CONVERSION_UNCOMPRESSED ;
 int memmove (unsigned char*,unsigned char const*,size_t) ;
 int o2i_ECPublicKey (int **,unsigned char const**,int) ;

EVP_PKEY*
ldns_ecdsa2pkey_raw(const unsigned char* key, size_t keylen, uint8_t algo)
{
 unsigned char buf[256+2];
        const unsigned char* pp = buf;
        EVP_PKEY *evp_key;
        EC_KEY *ec;

        if(algo == LDNS_ECDSAP256SHA256) {
  if(keylen != 2*256/8) return ((void*)0);
                ec = EC_KEY_new_by_curve_name(NID_X9_62_prime256v1);
        } else if(algo == LDNS_ECDSAP384SHA384) {
  if(keylen != 2*384/8) return ((void*)0);
                ec = EC_KEY_new_by_curve_name(NID_secp384r1);
        } else ec = ((void*)0);
        if(!ec) return ((void*)0);
 if(keylen+1 > sizeof(buf))
  return ((void*)0);


 buf[0] = POINT_CONVERSION_UNCOMPRESSED;
 memmove(buf+1, key, keylen);
        if(!o2i_ECPublicKey(&ec, &pp, (int)keylen+1)) {
                EC_KEY_free(ec);
                return ((void*)0);
        }
        evp_key = EVP_PKEY_new();
        if(!evp_key) {
                EC_KEY_free(ec);
                return ((void*)0);
        }
        if (!EVP_PKEY_assign_EC_KEY(evp_key, ec)) {
  EVP_PKEY_free(evp_key);
  EC_KEY_free(ec);
  return ((void*)0);
 }
        return evp_key;
}
