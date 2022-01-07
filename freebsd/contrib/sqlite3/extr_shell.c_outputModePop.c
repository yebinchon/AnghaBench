
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rowSepPrior; int rowSeparator; int colSepPrior; int colSeparator; int modePrior; int mode; } ;
typedef TYPE_1__ ShellState ;


 int memcpy (int ,int ,int) ;

__attribute__((used)) static void outputModePop(ShellState *p){
  p->mode = p->modePrior;
  memcpy(p->colSeparator, p->colSepPrior, sizeof(p->colSeparator));
  memcpy(p->rowSeparator, p->rowSepPrior, sizeof(p->rowSeparator));
}
