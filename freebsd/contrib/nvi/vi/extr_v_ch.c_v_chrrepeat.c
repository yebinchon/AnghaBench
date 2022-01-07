
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int cdir_t ;
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
v_chrrepeat(SCR *sp, VICMD *vp)
{
 cdir_t savedir;
 int rval;

 vp->character = VIP(sp)->lastckey;
 savedir = VIP(sp)->csearchdir;

 switch (VIP(sp)->csearchdir) {
 case 132:
  noprev(sp);
  return (1);
 case 131:
  rval = v_chf(sp, vp);
  break;
 case 129:
  rval = v_chF(sp, vp);
  break;
 case 130:
  rval = v_cht(sp, vp);
  break;
 case 128:
  rval = v_chT(sp, vp);
  break;
 default:
  abort();
 }
 VIP(sp)->csearchdir = savedir;
 return (rval);
}
