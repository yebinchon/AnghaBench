
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t len; scalar_t__ tt; } ;
struct TYPE_7__ {TYPE_1__ tsv; } ;
typedef TYPE_2__ TString ;


 scalar_t__ LUA_TLNGSTR ;
 int getstr (TYPE_2__*) ;
 int lua_assert (int) ;
 scalar_t__ memcmp (int ,int ,size_t) ;

int luaS_eqlngstr (TString *a, TString *b) {
  size_t len = a->tsv.len;
  lua_assert(a->tsv.tt == LUA_TLNGSTR && b->tsv.tt == LUA_TLNGSTR);
  return (a == b) ||
    ((len == b->tsv.len) &&
     (memcmp(getstr(a), getstr(b), len) == 0));
}
