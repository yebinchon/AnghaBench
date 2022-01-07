
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MINT ;


 scalar_t__ mp_mcmp (int const*,int const*) ;
 int printf (char*,int,char const*) ;
 int tnr ;

__attribute__((used)) static void
testmcmp(const MINT *mp1, const MINT *mp2, const char *tname)
{

 if (mp_mcmp(mp1, mp2) == 0)
  printf("ok %d - %s\n", ++tnr, tname);
 else
  printf("not ok - %d %s\n", ++tnr, tname);
}
