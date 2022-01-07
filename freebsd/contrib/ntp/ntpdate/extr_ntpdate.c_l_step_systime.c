
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int l_ui; } ;
typedef TYPE_1__ l_fp ;


 int LFPTOD (TYPE_1__*,double) ;
 scalar_t__ L_ISNEG (TYPE_1__*) ;
 int L_NEG (TYPE_1__*) ;
 scalar_t__ debug ;
 int l_adj_systime (TYPE_1__*) ;
 int step_systime (double) ;

__attribute__((used)) static int
l_step_systime(
 l_fp *ts
 )
{
 double dtemp;
 if (debug)
  return 1;
 LFPTOD(ts, dtemp);
 return step_systime(dtemp);

}
