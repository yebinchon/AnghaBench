
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ type; } ;
struct TYPE_9__ {int * opts; } ;
typedef TYPE_1__ SCR ;


 scalar_t__ F_ISSET (int *,int ) ;
 int M_SYSERR ;
 int OPT_GLOBAL ;
 scalar_t__ OPT_STR ;
 int OS_DEF ;
 int OS_NOFREE ;
 int OS_STR ;
 int OS_STRDUP ;
 int * O_D_STR (TYPE_1__*,int) ;
 int O_OPTIONCOUNT ;
 int * O_STR (TYPE_1__*,int) ;
 int memcpy (int *,int *,int) ;
 int msgq (TYPE_1__*,int ,int *) ;
 scalar_t__ o_set (TYPE_1__*,int,int,int *,int ) ;
 TYPE_4__* optlist ;

int
opts_copy(
 SCR *orig,
 SCR *sp)
{
 int cnt, rval;


 memcpy(sp->opts, orig->opts, sizeof(orig->opts));


 for (cnt = rval = 0; cnt < O_OPTIONCOUNT; ++cnt) {
  if (optlist[cnt].type != OPT_STR ||
      F_ISSET(&sp->opts[cnt], OPT_GLOBAL))
   continue;





  if (rval || O_STR(sp, cnt) == ((void*)0)) {
   o_set(sp, cnt, OS_NOFREE | OS_STR, ((void*)0), 0);
   o_set(sp, cnt, OS_DEF | OS_NOFREE | OS_STR, ((void*)0), 0);
   continue;
  }


  if (o_set(sp, cnt, OS_NOFREE | OS_STRDUP, O_STR(sp, cnt), 0)) {
   o_set(sp, cnt, OS_DEF | OS_NOFREE | OS_STR, ((void*)0), 0);
   goto nomem;
  }


  if (O_D_STR(sp, cnt) != ((void*)0) && o_set(sp, cnt,
      OS_DEF | OS_NOFREE | OS_STRDUP, O_D_STR(sp, cnt), 0)) {
nomem: msgq(orig, M_SYSERR, ((void*)0));
   rval = 1;
  }
 }
 return (rval);
}
