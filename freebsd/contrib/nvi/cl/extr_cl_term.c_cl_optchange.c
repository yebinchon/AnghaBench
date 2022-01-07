
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_13__ {TYPE_1__* frp; struct TYPE_13__* gp; } ;
struct TYPE_12__ {int * name; } ;
typedef TYPE_2__ SCR ;
typedef TYPE_2__ CL_PRIVATE ;


 TYPE_2__* CLP (TYPE_2__*) ;
 int CL_RENAME_OK ;
 int F_CLR (TYPE_2__*,int) ;
 int F_SET (TYPE_2__*,int) ;
 int G_SRESTART ;





 int SC_SCR_EX ;
 int SC_SCR_VI ;
 int cl_omesg (TYPE_2__*,TYPE_2__*,int ) ;
 int cl_rename (TYPE_2__*,int *,int) ;

int
cl_optchange(SCR *sp, int opt, char *str, u_long *valp)
{
 CL_PRIVATE *clp;

 clp = CLP(sp);

 switch (opt) {
 case 129:
  F_CLR(sp, SC_SCR_EX | SC_SCR_VI);

 case 132:
 case 131:




  F_SET(sp->gp, G_SRESTART);
  break;
 case 130:
  (void)cl_omesg(sp, clp, *valp);
  break;
 case 128:
  if (*valp) {
   F_SET(clp, CL_RENAME_OK);





   if (sp->frp != ((void*)0) && sp->frp->name != ((void*)0))
    (void)cl_rename(sp, sp->frp->name, 1);
  } else {
   F_CLR(clp, CL_RENAME_OK);

   (void)cl_rename(sp, ((void*)0), 0);
  }
  break;
 }
 return (0);
}
