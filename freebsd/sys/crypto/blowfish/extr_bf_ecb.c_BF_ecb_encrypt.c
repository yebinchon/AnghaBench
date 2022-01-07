
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BF_LONG ;
typedef int BF_KEY ;


 int BF_decrypt (scalar_t__*,int *) ;
 int BF_encrypt (scalar_t__*,int *) ;
 int l2n (scalar_t__,unsigned char*) ;
 int n2l (unsigned char const*,scalar_t__) ;

void BF_ecb_encrypt(const unsigned char *in, unsigned char *out,
      BF_KEY *key, int encrypt)
 {
 BF_LONG l,d[2];

 n2l(in,l); d[0]=l;
 n2l(in,l); d[1]=l;
 if (encrypt)
  BF_encrypt(d,key);
 else
  BF_decrypt(d,key);
 l=d[0]; l2n(l,out);
 l=d[1]; l2n(l,out);
 l=d[0]=d[1]=0;
 }
