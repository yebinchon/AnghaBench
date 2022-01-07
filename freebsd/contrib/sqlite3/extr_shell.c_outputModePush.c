
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rowSeparator; int rowSepPrior; int colSeparator; int colSepPrior; int mode; int modePrior; } ;
typedef TYPE_1__ ShellState ;


 int memcpy (int ,int ,int) ;

__attribute__((used)) static void outputModePush(ShellState *p){
  p->modePrior = p->mode;
  memcpy(p->colSepPrior, p->colSeparator, sizeof(p->colSeparator));
  memcpy(p->rowSepPrior, p->rowSeparator, sizeof(p->rowSeparator));
}
