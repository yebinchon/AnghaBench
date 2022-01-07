
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
 int memmove (scalar_t__,scalar_t__,int) ;
 int stub1 (TYPE_2__*,int ,int ) ;
 scalar_t__ vs_insertln (TYPE_2__*,int) ;
 int vs_line (TYPE_2__*,scalar_t__,int *,int *) ;
 scalar_t__ vs_sm_prev (TYPE_2__*,scalar_t__,scalar_t__) ;

int
vs_sm_1down(SCR *sp)
{




 (void)sp->gp->scr_move(sp, 0, 0);
 if (vs_insertln(sp, 1))
  return (1);


 if (IS_ONELINE(sp)) {
  if (vs_sm_prev(sp, HMAP, HMAP))
   return (1);
 } else {
  memmove(HMAP + 1, HMAP, (sp->rows - 1) * sizeof(SMAP));
  if (vs_sm_prev(sp, HMAP + 1, HMAP))
   return (1);
 }

 return (vs_line(sp, HMAP, ((void*)0), ((void*)0)));
}
