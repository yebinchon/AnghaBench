
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __SSE_NO ;
 int __SSE_YES ;
 int __has_sse ;
 int cpuid_dx (int*) ;
 int getfl (int*) ;
 int setfl (int) ;

int
__test_sse(void)
{
 int flag, nflag;
 int dx_features;


 getfl(&flag);
 nflag = flag ^ 0x200000;
 setfl(nflag);
 getfl(&nflag);
 if (flag != nflag) {

  cpuid_dx(&dx_features);
  if (dx_features & 0x2000000) {
   __has_sse = __SSE_YES;
   return (1);
  }
 }
 __has_sse = __SSE_NO;
 return (0);
}
