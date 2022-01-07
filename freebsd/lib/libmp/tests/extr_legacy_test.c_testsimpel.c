
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MINT ;


 int c1 ;
 int * c42 ;
 int * c43 ;
 int * c44 ;
 int mp_madd (int *,int ,int *) ;
 int mp_mfree (int *) ;
 int mp_move (int *,int *) ;
 int mp_msub (int *,int ,int *) ;
 char* mp_mtox (int *) ;
 int * mp_xtom (char const*) ;
 int printf (char*,int,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int * t0 ;
 int testmcmp (int *,int *,char*) ;
 int tnr ;

__attribute__((used)) static void
testsimpel(void)
{
 const char str42[] = "2a";
 MINT *t2;
 char *s;

 mp_madd(c42, c1, t0);
 testmcmp(c43, t0, "madd0");
 mp_madd(t0, c1, t0);
 testmcmp(c44, t0, "madd1");
 mp_msub(t0, c1, t0);
 testmcmp(c43, t0, "msub0");
 mp_msub(t0, c1, t0);
 testmcmp(c42, t0, "msub1");
 mp_move(c42, t0);
 testmcmp(c42, t0, "move0");

 t2 = mp_xtom(str42);
 testmcmp(c42, t2, "xtom");
 s = mp_mtox(t2);
 if (strcmp(str42, s) == 0)
  printf("ok %d - %s\n", ++tnr, "mtox0");
 else
  printf("not ok %d - %s\n", ++tnr, "mtox0");
 mp_mfree(t2);
}
