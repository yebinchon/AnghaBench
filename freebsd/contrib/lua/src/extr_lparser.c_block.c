
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * fs; } ;
typedef TYPE_1__ LexState ;
typedef int FuncState ;
typedef int BlockCnt ;


 int enterblock (int *,int *,int ) ;
 int leaveblock (int *) ;
 int statlist (TYPE_1__*) ;

__attribute__((used)) static void block (LexState *ls) {

  FuncState *fs = ls->fs;
  BlockCnt bl;
  enterblock(fs, &bl, 0);
  statlist(ls);
  leaveblock(fs);
}
