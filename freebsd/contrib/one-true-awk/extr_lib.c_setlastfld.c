
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FATAL (char*) ;
 int cleanfld (int,int) ;
 int growfldtab (int) ;
 int lastfld ;
 int nfields ;

void setlastfld(int n)
{
 if (n < 0)
  FATAL("cannot set NF to a negative value");
 if (n > nfields)
  growfldtab(n);

 if (lastfld < n)
     cleanfld(lastfld+1, n);
 else
     cleanfld(n+1, lastfld);

 lastfld = n;
}
