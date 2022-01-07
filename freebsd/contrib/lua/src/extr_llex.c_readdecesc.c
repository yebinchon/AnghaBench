
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int current; int buff; } ;
typedef TYPE_1__ LexState ;


 int UCHAR_MAX ;
 int esccheck (TYPE_1__*,int,char*) ;
 scalar_t__ lisdigit (int) ;
 int luaZ_buffremove (int ,int) ;
 int save_and_next (TYPE_1__*) ;

__attribute__((used)) static int readdecesc (LexState *ls) {
  int i;
  int r = 0;
  for (i = 0; i < 3 && lisdigit(ls->current); i++) {
    r = 10*r + ls->current - '0';
    save_and_next(ls);
  }
  esccheck(ls, r <= UCHAR_MAX, "decimal escape too large");
  luaZ_buffremove(ls->buff, i);
  return r;
}
