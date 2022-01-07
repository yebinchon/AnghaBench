
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* ts; } ;
struct TYPE_11__ {scalar_t__ token; TYPE_2__ seminfo; } ;
struct TYPE_13__ {TYPE_3__ t; int * fs; } ;
struct TYPE_9__ {int len; } ;
struct TYPE_12__ {TYPE_1__ tsv; } ;
typedef TYPE_4__ TString ;
typedef TYPE_5__ LexState ;


 scalar_t__ TK_EOS ;
 scalar_t__ TK_NAME ;
 scalar_t__ TK_STRING ;
 int getstr (TYPE_4__*) ;
 int luaX_newstring (TYPE_5__*,int ,int ) ;
 int lua_assert (int) ;

__attribute__((used)) static void anchor_token (LexState *ls) {

  lua_assert(ls->fs != ((void*)0) || ls->t.token == TK_EOS);
  if (ls->t.token == TK_NAME || ls->t.token == TK_STRING) {
    TString *ts = ls->t.seminfo.ts;
    luaX_newstring(ls, getstr(ts), ts->tsv.len);
  }
}
