
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * ts; } ;
struct TYPE_8__ {TYPE_1__ seminfo; } ;
struct TYPE_9__ {TYPE_2__ t; } ;
typedef int TString ;
typedef TYPE_3__ LexState ;


 int TK_NAME ;
 int check (TYPE_3__*,int ) ;
 int luaX_next (TYPE_3__*) ;

__attribute__((used)) static TString *str_checkname (LexState *ls) {
  TString *ts;
  check(ls, TK_NAME);
  ts = ls->t.seminfo.ts;
  luaX_next(ls);
  return ts;
}
