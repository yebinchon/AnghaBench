
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int des_key_schedule ;
typedef int DES_LONG ;


 int DES_DECRYPT ;
 int DES_ENCRYPT ;
 int FP (int ,int ) ;
 int IP (int ,int ) ;
 int des_encrypt2 (int *,int ,int ) ;

void des_encrypt3(DES_LONG *data, des_key_schedule ks1, des_key_schedule ks2,
      des_key_schedule ks3)
{
 DES_LONG l,r;

 l=data[0];
 r=data[1];
 IP(l,r);
 data[0]=l;
 data[1]=r;
 des_encrypt2((DES_LONG *)data,ks1,DES_ENCRYPT);
 des_encrypt2((DES_LONG *)data,ks2,DES_DECRYPT);
 des_encrypt2((DES_LONG *)data,ks3,DES_ENCRYPT);
 l=data[0];
 r=data[1];
 FP(r,l);
 data[0]=l;
 data[1]=r;
}
