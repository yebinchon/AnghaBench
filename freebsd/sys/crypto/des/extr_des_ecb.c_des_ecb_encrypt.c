
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int des_key_schedule ;
typedef scalar_t__ DES_LONG ;


 int c2l (unsigned char const*,scalar_t__) ;
 int des_encrypt1 (scalar_t__*,int ,int) ;
 int l2c (scalar_t__,unsigned char*) ;

void des_ecb_encrypt(unsigned char *input, unsigned char *output,
       des_key_schedule ks, int enc)
{
 register DES_LONG l;
 DES_LONG ll[2];
 const unsigned char *in = input;
 unsigned char *out = output;

 c2l(in,l); ll[0]=l;
 c2l(in,l); ll[1]=l;
 des_encrypt1(ll,ks,enc);
 l=ll[0]; l2c(l,out);
 l=ll[1]; l2c(l,out);
 l=ll[0]=ll[1]=0;
}
