
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int des_key_schedule ;
typedef int DES_LONG ;


 int c2l (unsigned char const*,int ) ;
 int des_decrypt3 (int *,int ,int ,int ) ;
 int des_encrypt3 (int *,int ,int ,int ) ;
 int l2c (int ,unsigned char*) ;

void des_ecb3_encrypt(unsigned char *input, unsigned char *output,
             des_key_schedule ks1, des_key_schedule ks2, des_key_schedule ks3,
             int enc)
{
 register DES_LONG l0,l1;
 DES_LONG ll[2];
 const unsigned char *in = input;
 unsigned char *out = output;

 c2l(in,l0);
 c2l(in,l1);
 ll[0]=l0;
 ll[1]=l1;

 if (enc)
  des_encrypt3(ll,ks1,ks2,ks3);
 else
  des_decrypt3(ll,ks1,ks2,ks3);

 l0=ll[0];
 l1=ll[1];
 l2c(l0,out);
 l2c(l1,out);
}
