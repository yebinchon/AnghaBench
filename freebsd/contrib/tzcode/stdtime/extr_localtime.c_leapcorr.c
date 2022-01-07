
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct state {int leapcnt; struct lsinfo* lsis; } ;
struct lsinfo {scalar_t__ ls_trans; long ls_corr; } ;


 struct state* lclptr ;

__attribute__((used)) static long
leapcorr(time_t *timep)
{
 struct state * sp;
 struct lsinfo * lp;
 int i;

 sp = lclptr;
 i = sp->leapcnt;
 while (--i >= 0) {
  lp = &sp->lsis[i];
  if (*timep >= lp->ls_trans)
   return lp->ls_corr;
 }
 return 0;
}
