
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint16_t ;


 int EXTRACT_LDBL128_WORDS (int ,int,int,long double volatile) ;
 long double __kernel_cosl (long double,long double) ;
 long double __kernel_sinl (long double,long double,int ) ;
 int one ;
 long double pi ;
 long double zero ;

__attribute__((used)) static long double
sin_pil(long double x)
{
 volatile long double vz;
 long double y,z;
 uint64_t lx, n;
 uint16_t hx;

 y = -x;

 vz = y+0x1.p112;
 z = vz-0x1.p112;
 if (z == y)
     return zero;

 vz = y+0x1.p110;
 EXTRACT_LDBL128_WORDS(hx,lx,n,vz);
 z = vz-0x1.p110;
 if (z > y) {
     z -= 0.25;
     n--;
 }
 n &= 7;
 y = y - z + n * 0.25;

 switch (n) {
     case 0: y = __kernel_sinl(pi*y,zero,0); break;
     case 1:
     case 2: y = __kernel_cosl(pi*(0.5-y),zero); break;
     case 3:
     case 4: y = __kernel_sinl(pi*(one-y),zero,0); break;
     case 5:
     case 6: y = -__kernel_cosl(pi*(y-1.5),zero); break;
     default: y = __kernel_sinl(pi*(y-2.0),zero,0); break;
     }
 return -y;
}
