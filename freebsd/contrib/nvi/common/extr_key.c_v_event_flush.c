
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_7__ {scalar_t__ i_cnt; size_t i_next; TYPE_1__* i_event; } ;
struct TYPE_6__ {TYPE_3__* gp; } ;
struct TYPE_5__ {int e_ch; } ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ GS ;


 scalar_t__ F_ISSET (int *,int ) ;
 int QREM (int) ;

int
v_event_flush(
 SCR *sp,
 u_int flags)
{
 GS *gp;
 int rval;

 for (rval = 0, gp = sp->gp; gp->i_cnt != 0 &&
     F_ISSET(&gp->i_event[gp->i_next].e_ch, flags); rval = 1)
  QREM(1);
 return (rval);
}
