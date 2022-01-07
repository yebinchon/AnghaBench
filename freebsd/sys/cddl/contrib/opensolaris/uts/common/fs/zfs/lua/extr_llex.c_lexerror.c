
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int l_noret ;
struct TYPE_4__ {int L; int linenumber; int source; } ;
typedef TYPE_1__ LexState ;


 int LUA_ERRSYNTAX ;
 int LUA_IDSIZE ;
 int getstr (int ) ;
 int luaD_throw (int ,int ) ;
 int luaO_chunkid (char*,int ,int) ;
 char* luaO_pushfstring (int ,char*,char const*,int ,...) ;
 int txtToken (TYPE_1__*,int) ;

__attribute__((used)) static l_noret lexerror (LexState *ls, const char *msg, int token) {
  char buff[LUA_IDSIZE];
  luaO_chunkid(buff, getstr(ls->source), LUA_IDSIZE);
  msg = luaO_pushfstring(ls->L, "%s:%d: %s", buff, ls->linenumber, msg);
  if (token)
    luaO_pushfstring(ls->L, "%s near %s", msg, txtToken(ls, token));
  luaD_throw(ls->L, LUA_ERRSYNTAX);
}
