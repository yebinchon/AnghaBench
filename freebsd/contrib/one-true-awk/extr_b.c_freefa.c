
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int curstat; int accept; struct TYPE_8__* restr; TYPE_2__* re; struct TYPE_8__** posns; } ;
typedef TYPE_3__ fa ;
struct TYPE_6__ {TYPE_3__* np; } ;
struct TYPE_7__ {scalar_t__ ltype; TYPE_1__ lval; TYPE_3__* lfollow; } ;


 scalar_t__ CCL ;
 scalar_t__ NCCL ;
 int xfree (TYPE_3__*) ;

void freefa(fa *f)
{
 int i;

 if (f == ((void*)0))
  return;
 for (i = 0; i <= f->curstat; i++)
  xfree(f->posns[i]);
 for (i = 0; i <= f->accept; i++) {
  xfree(f->re[i].lfollow);
  if (f->re[i].ltype == CCL || f->re[i].ltype == NCCL)
   xfree((f->re[i].lval.np));
 }
 xfree(f->restr);
 xfree(f);
}
