
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ cno; } ;
struct TYPE_9__ {TYPE_1__ m_final; } ;
typedef TYPE_2__ VICMD ;
struct TYPE_11__ {int lundo; } ;
struct TYPE_10__ {TYPE_7__* ep; } ;
typedef TYPE_3__ SCR ;


 int BACKWARD ;
 int F_SET (TYPE_7__*,int ) ;
 int F_UNDO ;
 int log_setline (TYPE_3__*) ;

int
v_Undo(SCR *sp, VICMD *vp)
{







 vp->m_final.cno = 0;
 F_SET(sp->ep, F_UNDO);
 sp->ep->lundo = BACKWARD;

 return (log_setline(sp));
}
