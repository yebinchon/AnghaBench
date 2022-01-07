
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* des_key_schedule ;
struct TYPE_4__ {int* deslong; } ;
struct TYPE_5__ {TYPE_1__ ks; } ;
typedef int DES_LONG ;


 int D_ENCRYPT (int,int,int) ;
 int FP (int,int) ;
 int IP (int,int) ;
 int ROTATE (int,int) ;
 scalar_t__ des_SPtrans ;

void des_encrypt1(DES_LONG *data, des_key_schedule ks, int enc)
{
 DES_LONG l,r,t,u;




 int i;

 DES_LONG *s;

 r=data[0];
 l=data[1];

 IP(r,l);
 r=ROTATE(r,29)&0xffffffffL;
 l=ROTATE(l,29)&0xffffffffL;

 s=ks->ks.deslong;


 if (enc)
  {
  for (i=0; i<32; i+=8)
   {
   D_ENCRYPT(l,r,i+0);
   D_ENCRYPT(r,l,i+2);
   D_ENCRYPT(l,r,i+4);
   D_ENCRYPT(r,l,i+6);
   }

  }
 else
  {
  for (i=30; i>0; i-=8)
   {
   D_ENCRYPT(l,r,i-0);
   D_ENCRYPT(r,l,i-2);
   D_ENCRYPT(l,r,i-4);
   D_ENCRYPT(r,l,i-6);
   }

  }


 l=ROTATE(l,3)&0xffffffffL;
 r=ROTATE(r,3)&0xffffffffL;

 FP(r,l);
 data[0]=l;
 data[1]=r;
 l=r=t=u=0;
}
