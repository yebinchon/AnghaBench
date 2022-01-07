
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int c10 ;
 int c15 ;
 int c5 ;
 int mp_gcd (int ,int ,int ) ;
 int t0 ;
 int testmcmp (int ,int ,char*) ;

__attribute__((used)) static void
testgcd(void)
{

 mp_gcd(c10, c15, t0);
 testmcmp(t0, c5, "gcd0");
}
