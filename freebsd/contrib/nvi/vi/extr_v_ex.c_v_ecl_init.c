
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int ep; } ;
struct TYPE_11__ {TYPE_6__* ccl_sp; } ;
struct TYPE_10__ {TYPE_2__* gp; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ GS ;
typedef int FREF ;


 int F_CLR (int ,int ) ;
 int F_RCV_ON ;
 int * file_add (TYPE_1__*,int *) ;
 scalar_t__ file_init (TYPE_6__*,int *,int *,int ) ;
 int screen_end (TYPE_6__*) ;
 scalar_t__ screen_init (TYPE_2__*,TYPE_1__*,TYPE_6__**) ;

__attribute__((used)) static int
v_ecl_init(SCR *sp)
{
 FREF *frp;
 GS *gp;

 gp = sp->gp;


 if ((frp = file_add(sp, ((void*)0))) == ((void*)0))
  return (1);





 if (screen_init(gp, sp, &gp->ccl_sp))
  return (1);
 if (file_init(gp->ccl_sp, frp, ((void*)0), 0)) {
  (void)screen_end(gp->ccl_sp);
  gp->ccl_sp = ((void*)0);
  return (1);
 }


 F_CLR(gp->ccl_sp->ep, F_RCV_ON);

 return (0);
}
