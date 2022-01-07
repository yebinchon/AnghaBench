
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int linenumber; int L; } ;
typedef TYPE_1__ LexState ;


 int error_expected (TYPE_1__*,int) ;
 int luaO_pushfstring (int ,char*,int ,int ,int) ;
 int luaX_syntaxerror (TYPE_1__*,int ) ;
 int luaX_token2str (TYPE_1__*,int) ;
 int testnext (TYPE_1__*,int) ;

__attribute__((used)) static void check_match (LexState *ls, int what, int who, int where) {
  if (!testnext(ls, what)) {
    if (where == ls->linenumber)
      error_expected(ls, what);
    else {
      luaX_syntaxerror(ls, luaO_pushfstring(ls->L,
             "%s expected (to close %s at line %d)",
              luaX_token2str(ls, what), luaX_token2str(ls, who), where));
    }
  }
}
