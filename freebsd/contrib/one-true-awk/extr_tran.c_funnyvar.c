
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tval; int fval; int sval; int nval; } ;
typedef TYPE_1__ Cell ;


 int FATAL (char*,char const*,int ) ;
 int FCN ;
 int WARNING (char*,TYPE_1__*,int ,int ,int ,int) ;
 scalar_t__ isarr (TYPE_1__*) ;

void funnyvar(Cell *vp, const char *rw)
{
 if (isarr(vp))
  FATAL("can't %s %s; it's an array name.", rw, vp->nval);
 if (vp->tval & FCN)
  FATAL("can't %s %s; it's a function.", rw, vp->nval);
 WARNING("funny variable %p: n=%s s=\"%s\" f=%g t=%o",
  vp, vp->nval, vp->sval, vp->fval, vp->tval);
}
