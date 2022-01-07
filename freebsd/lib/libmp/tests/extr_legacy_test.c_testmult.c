
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int c10 ;
 int c14 ;
 int c2 ;
 int c3 ;
 int c42 ;
 int c5 ;
 int mp_mult (int ,int ,int ) ;
 int t0 ;
 int testmcmp (int ,int ,char*) ;

__attribute__((used)) static void
testmult(void)
{

 mp_mult(c5, c2, t0);
 testmcmp(t0, c10, "mmult0");
 mp_mult(c3, c14, t0);
 testmcmp(t0, c42, "mmult1");
}
