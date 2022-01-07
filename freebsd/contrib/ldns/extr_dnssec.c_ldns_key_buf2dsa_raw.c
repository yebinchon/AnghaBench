
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_7__ {int * pub_key; int * g; int * q; int * p; } ;
typedef TYPE_1__ DSA ;
typedef int BIGNUM ;


 int * BN_bin2bn (unsigned char const*,int,int *) ;
 int BN_free (int *) ;
 int DSA_free (TYPE_1__*) ;
 TYPE_1__* DSA_new () ;
 int DSA_set0_key (TYPE_1__*,int *,int *) ;
 int DSA_set0_pqg (TYPE_1__*,int *,int *,int *) ;
 size_t SHA_DIGEST_LENGTH ;

DSA *
ldns_key_buf2dsa_raw(const unsigned char* key, size_t len)
{
 uint8_t T;
 uint16_t length;
 uint16_t offset;
 DSA *dsa;
 BIGNUM *Q; BIGNUM *P;
 BIGNUM *G; BIGNUM *Y;

 if(len == 0)
  return ((void*)0);
 T = (uint8_t)key[0];
 length = (64 + T * 8);
 offset = 1;

 if (T > 8) {
  return ((void*)0);
 }
 if(len < (size_t)1 + SHA_DIGEST_LENGTH + 3*length)
  return ((void*)0);

 Q = BN_bin2bn(key+offset, SHA_DIGEST_LENGTH, ((void*)0));
 offset += SHA_DIGEST_LENGTH;

 P = BN_bin2bn(key+offset, (int)length, ((void*)0));
 offset += length;

 G = BN_bin2bn(key+offset, (int)length, ((void*)0));
 offset += length;

 Y = BN_bin2bn(key+offset, (int)length, ((void*)0));
 offset += length;


 if(!Q || !P || !G || !Y || !(dsa = DSA_new())) {
  BN_free(Q);
  BN_free(P);
  BN_free(G);
  BN_free(Y);
  return ((void*)0);
 }


 dsa->p = P;
 dsa->q = Q;
 dsa->g = G;
 dsa->pub_key = Y;
 return dsa;
}
