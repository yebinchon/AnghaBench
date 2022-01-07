
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int c10 ;
 int c2 ;
 int c3 ;
 int c8 ;
 int mp_pow (int ,int ,int ,int ) ;
 int mp_rpow (int ,int,int ) ;
 int t0 ;
 int testmcmp (int ,int ,char*) ;

__attribute__((used)) static void
testpow(void)
{

 mp_pow(c2, c3, c10, t0);
 testmcmp(t0, c8, "pow0");
 mp_pow(c2, c3, c3, t0);
 testmcmp(t0, c2, "pow1");
 mp_rpow(c2, 3, t0);
 testmcmp(t0, c8, "rpow0");
}
