
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Awkfloat ;


 int cleanfld (int,int) ;
 int growfldtab (int) ;
 int lastfld ;
 int nfields ;
 int nfloc ;
 int setfval (int ,int ) ;

void newfld(int n)
{
 if (n > nfields)
  growfldtab(n);
 cleanfld(lastfld+1, n);
 lastfld = n;
 setfval(nfloc, (Awkfloat) n);
}
