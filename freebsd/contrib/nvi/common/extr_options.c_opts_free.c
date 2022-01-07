
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; } ;
struct TYPE_6__ {int * opts; } ;
typedef TYPE_1__ SCR ;


 scalar_t__ F_ISSET (int *,int ) ;
 int OPT_GLOBAL ;
 scalar_t__ OPT_STR ;
 int * O_D_STR (TYPE_1__*,int) ;
 int O_OPTIONCOUNT ;
 int * O_STR (TYPE_1__*,int) ;
 int free (int *) ;
 TYPE_3__* optlist ;

void
opts_free(SCR *sp)
{
 int cnt;

 for (cnt = 0; cnt < O_OPTIONCOUNT; ++cnt) {
  if (optlist[cnt].type != OPT_STR ||
      F_ISSET(&sp->opts[cnt], OPT_GLOBAL))
   continue;
  if (O_STR(sp, cnt) != ((void*)0))
   free(O_STR(sp, cnt));
  if (O_D_STR(sp, cnt) != ((void*)0))
   free(O_D_STR(sp, cnt));
 }
}
