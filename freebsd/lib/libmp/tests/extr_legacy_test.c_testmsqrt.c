
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int c0 ;
 int c25 ;
 int c42 ;
 int c5 ;
 int c6 ;
 int mp_msqrt (int ,int ,int ) ;
 int t0 ;
 int t1 ;
 int testmcmp (int ,int ,char*) ;

__attribute__((used)) static void
testmsqrt(void)
{

 mp_msqrt(c25, t0, t1);
 testmcmp(t0, c5, "msqrt0");
 testmcmp(t1, c0, "msqrt1");
 mp_msqrt(c42, t0, t1);
 testmcmp(t0, c6, "msqrt2");
 testmcmp(t1, c6, "msqrt3");
}
