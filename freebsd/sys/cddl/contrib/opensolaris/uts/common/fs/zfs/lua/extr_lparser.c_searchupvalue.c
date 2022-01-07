
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int name; } ;
typedef TYPE_2__ Upvaldesc ;
struct TYPE_7__ {int nups; TYPE_1__* f; } ;
struct TYPE_5__ {TYPE_2__* upvalues; } ;
typedef int TString ;
typedef TYPE_3__ FuncState ;


 scalar_t__ luaS_eqstr (int ,int *) ;

__attribute__((used)) static int searchupvalue (FuncState *fs, TString *name) {
  int i;
  Upvaldesc *up = fs->f->upvalues;
  for (i = 0; i < fs->nups; i++) {
    if (luaS_eqstr(up[i].name, name)) return i;
  }
  return -1;
}
