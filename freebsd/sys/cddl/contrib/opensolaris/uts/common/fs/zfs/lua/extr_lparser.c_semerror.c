
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int l_noret ;
struct TYPE_5__ {scalar_t__ token; } ;
struct TYPE_6__ {TYPE_1__ t; } ;
typedef TYPE_2__ LexState ;


 int luaX_syntaxerror (TYPE_2__*,char const*) ;

__attribute__((used)) static l_noret semerror (LexState *ls, const char *msg) {
  ls->t.token = 0;
  luaX_syntaxerror(ls, msg);
}
