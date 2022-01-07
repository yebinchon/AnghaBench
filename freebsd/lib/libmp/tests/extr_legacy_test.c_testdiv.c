
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MINT ;


 int c1 ;
 int c10 ;
 int c2 ;
 int c42 ;
 int c5 ;
 int c8 ;
 int * mp_itom (short) ;
 int mp_mdiv (int ,int ,int *,int *) ;
 int mp_mfree (int *) ;
 int mp_sdiv (int ,int,int *,short*) ;
 int * t0 ;
 int * t1 ;
 int testmcmp (int *,int ,char*) ;

__attribute__((used)) static void
testdiv(void)
{
 short ro;
 MINT *t2;

 mp_mdiv(c42, c5, t0, t1);
 testmcmp(t0, c8, "mdiv0");
 testmcmp(t1, c2, "mdiv1");

 mp_mdiv(c10, c8, t0, t1);
 testmcmp(t0, c1, "mdiv2");
 testmcmp(t1, c2, "mdiv3");

 mp_sdiv(c42, 5, t0, &ro);
 testmcmp(t0, c8, "sdiv0");
 t2 = mp_itom(ro);
 testmcmp(t2, c2, "sdiv1");
 mp_mfree(t2);

 mp_sdiv(c10, 8, t0, &ro);
 testmcmp(t0, c1, "sdiv2");
 t2 = mp_itom(ro);
 testmcmp(t2, c2, "sdiv3");
 mp_mfree(t2);
}
