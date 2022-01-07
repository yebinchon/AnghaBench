
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int buff; } ;
typedef TYPE_1__ LexState ;


 int EOZ ;
 int TK_STRING ;
 int lexerror (TYPE_1__*,char const*,int ) ;
 int luaZ_resetbuffer (int ) ;
 int save (TYPE_1__*,int) ;

__attribute__((used)) static void escerror (LexState *ls, int *c, int n, const char *msg) {
  int i;
  luaZ_resetbuffer(ls->buff);
  save(ls, '\\');
  for (i = 0; i < n && c[i] != EOZ; i++)
    save(ls, c[i]);
  lexerror(ls, msg, TK_STRING);
}
