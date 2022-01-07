
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
typedef int ZIO ;
struct TYPE_4__ {int token; } ;
struct TYPE_5__ {char decpoint; int current; int linenumber; int lastline; int buff; int * L; int envn; int * source; int * fs; int * z; TYPE_1__ lookahead; } ;
typedef int TString ;
typedef TYPE_2__ LexState ;


 int LUA_ENV ;
 int LUA_MINBUFFER ;
 int TK_EOS ;
 int luaS_fix (int ) ;
 int luaS_new (int *,int ) ;
 int luaZ_resizebuffer (int *,int ,int ) ;

void luaX_setinput (lua_State *L, LexState *ls, ZIO *z, TString *source,
                    int firstchar) {
  ls->decpoint = '.';
  ls->L = L;
  ls->current = firstchar;
  ls->lookahead.token = TK_EOS;
  ls->z = z;
  ls->fs = ((void*)0);
  ls->linenumber = 1;
  ls->lastline = 1;
  ls->source = source;
  ls->envn = luaS_new(L, LUA_ENV);
  luaS_fix(ls->envn);
  luaZ_resizebuffer(ls->L, ls->buff, LUA_MINBUFFER);
}
