
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int rows; TYPE_1__* gp; } ;
struct TYPE_9__ {int (* scr_move ) (TYPE_2__*,int ,int ) ;} ;
typedef int SMAP ;
typedef TYPE_2__ SCR ;


 scalar_t__ HMAP ;
 scalar_t__ IS_ONELINE (TYPE_2__*) ;
 scalar_t__ TMAP ;
 int memmove (scalar_t__,scalar_t__,int) ;
 int stub1 (TYPE_2__*,int ,int ) ;
 scalar_t__ vs_deleteln (TYPE_2__*,int) ;
 int vs_line (TYPE_2__*,scalar_t__,int *,int *) ;
 scalar_t__ vs_sm_next (TYPE_2__*,scalar_t__,scalar_t__) ;

int
vs_sm_1up(SCR *sp)
{




 (void)sp->gp->scr_move(sp, 0, 0);
 if (vs_deleteln(sp, 1))
  return (1);


 if (IS_ONELINE(sp)) {
  if (vs_sm_next(sp, TMAP, TMAP))
   return (1);
 } else {
  memmove(HMAP, HMAP + 1, (sp->rows - 1) * sizeof(SMAP));
  if (vs_sm_next(sp, TMAP - 1, TMAP))
   return (1);
 }

 return (vs_line(sp, TMAP, ((void*)0), ((void*)0)));
}
