
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {TYPE_3__* f; int * bl; int firstlocal; scalar_t__ nactvar; scalar_t__ nlocvars; scalar_t__ nups; scalar_t__ np; scalar_t__ nk; scalar_t__ freereg; int jpc; scalar_t__ lasttarget; scalar_t__ pc; TYPE_4__* ls; struct TYPE_13__* prev; } ;
struct TYPE_12__ {int source; TYPE_2__* dyd; TYPE_5__* fs; } ;
struct TYPE_11__ {int maxstacksize; int source; } ;
struct TYPE_9__ {int n; } ;
struct TYPE_10__ {TYPE_1__ actvar; } ;
typedef TYPE_3__ Proto ;
typedef TYPE_4__ LexState ;
typedef TYPE_5__ FuncState ;
typedef int BlockCnt ;


 int NO_JUMP ;
 int enterblock (TYPE_5__*,int *,int ) ;

__attribute__((used)) static void open_func (LexState *ls, FuncState *fs, BlockCnt *bl) {
  Proto *f;
  fs->prev = ls->fs;
  fs->ls = ls;
  ls->fs = fs;
  fs->pc = 0;
  fs->lasttarget = 0;
  fs->jpc = NO_JUMP;
  fs->freereg = 0;
  fs->nk = 0;
  fs->np = 0;
  fs->nups = 0;
  fs->nlocvars = 0;
  fs->nactvar = 0;
  fs->firstlocal = ls->dyd->actvar.n;
  fs->bl = ((void*)0);
  f = fs->f;
  f->source = ls->source;
  f->maxstacksize = 2;
  enterblock(fs, bl, 0);
}
