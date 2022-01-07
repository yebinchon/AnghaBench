
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int expdesc ;
struct TYPE_7__ {struct TYPE_7__* prev; } ;
typedef int TString ;
typedef TYPE_1__ FuncState ;


 int VLOCAL ;
 int VUPVAL ;
 int VVOID ;
 int init_exp (int *,int,int) ;
 int markupval (TYPE_1__*,int) ;
 int newupvalue (TYPE_1__*,int *,int *) ;
 int searchupvalue (TYPE_1__*,int *) ;
 int searchvar (TYPE_1__*,int *) ;

__attribute__((used)) static int singlevaraux (FuncState *fs, TString *n, expdesc *var, int base) {
  if (fs == ((void*)0))
    return VVOID;
  else {
    int v = searchvar(fs, n);
    if (v >= 0) {
      init_exp(var, VLOCAL, v);
      if (!base)
        markupval(fs, v);
      return VLOCAL;
    }
    else {
      int idx = searchupvalue(fs, n);
      if (idx < 0) {
        if (singlevaraux(fs->prev, n, var, 0) == VVOID)
          return VVOID;

        idx = newupvalue(fs, n, var);
      }
      init_exp(var, VUPVAL, idx);
      return VUPVAL;
    }
  }
}
