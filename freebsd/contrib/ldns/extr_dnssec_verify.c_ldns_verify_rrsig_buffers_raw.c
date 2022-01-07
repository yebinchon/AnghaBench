
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ldns_status ;
typedef int ldns_buffer ;
 int LDNS_STATUS_CRYPTO_UNKNOWN_ALGO ;
 int ldns_verify_rrsig_dsa_raw (unsigned char*,size_t,int *,unsigned char*,size_t) ;
 int ldns_verify_rrsig_ecdsa_raw (unsigned char*,size_t,int *,unsigned char*,size_t,int) ;
 int ldns_verify_rrsig_ed25519_raw (unsigned char*,size_t,int *,unsigned char*,size_t) ;
 int ldns_verify_rrsig_ed448_raw (unsigned char*,size_t,int *,unsigned char*,size_t) ;
 int ldns_verify_rrsig_gost_raw (unsigned char*,size_t,int *,unsigned char*,size_t) ;
 int ldns_verify_rrsig_rsamd5_raw (unsigned char*,size_t,int *,unsigned char*,size_t) ;
 int ldns_verify_rrsig_rsasha1_raw (unsigned char*,size_t,int *,unsigned char*,size_t) ;
 int ldns_verify_rrsig_rsasha256_raw (unsigned char*,size_t,int *,unsigned char*,size_t) ;
 int ldns_verify_rrsig_rsasha512_raw (unsigned char*,size_t,int *,unsigned char*,size_t) ;

ldns_status
ldns_verify_rrsig_buffers_raw(unsigned char* sig, size_t siglen,
      ldns_buffer *verify_buf, unsigned char* key, size_t keylen,
      uint8_t algo)
{

 switch(algo) {
 case 131:
 case 130:
  return ldns_verify_rrsig_rsasha1_raw(sig,
           siglen,
           verify_buf,
           key,
           keylen);
  break;
 case 132:
  return ldns_verify_rrsig_rsamd5_raw(sig,
          siglen,
          verify_buf,
          key,
          keylen);
  break;
 default:

  return LDNS_STATUS_CRYPTO_UNKNOWN_ALGO;
 }
}
