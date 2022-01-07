
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int character; } ;
typedef TYPE_1__ VICMD ;
struct TYPE_9__ {int csearchdir; int lastckey; } ;
typedef int SCR ;





 TYPE_7__* VIP (int *) ;
 int abort () ;

 int noprev (int *) ;

 int v_chF (int *,TYPE_1__*) ;
 int v_chT (int *,TYPE_1__*) ;
 int v_chf (int *,TYPE_1__*) ;
 int v_cht (int *,TYPE_1__*) ;

int
v_chrepeat(SCR *sp, VICMD *vp)
{
 vp->character = VIP(sp)->lastckey;

 switch (VIP(sp)->csearchdir) {
 case 132:
  noprev(sp);
  return (1);
 case 131:
  return (v_chF(sp, vp));
 case 129:
  return (v_chf(sp, vp));
 case 130:
  return (v_chT(sp, vp));
 case 128:
  return (v_cht(sp, vp));
 default:
  abort();
 }

}
