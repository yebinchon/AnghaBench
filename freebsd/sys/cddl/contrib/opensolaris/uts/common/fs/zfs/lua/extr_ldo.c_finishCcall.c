
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ nny; scalar_t__ top; int errfunc; TYPE_4__* ci; } ;
typedef TYPE_3__ lua_State ;
struct TYPE_12__ {int (* k ) (TYPE_3__*) ;scalar_t__ status; int old_errfunc; } ;
struct TYPE_13__ {TYPE_1__ c; } ;
struct TYPE_15__ {int callstatus; TYPE_2__ u; int nresults; } ;
typedef TYPE_4__ CallInfo ;


 int CIST_STAT ;
 int CIST_YIELDED ;
 int CIST_YPCALL ;
 scalar_t__ LUA_OK ;
 scalar_t__ LUA_YIELD ;
 int adjustresults (TYPE_3__*,int ) ;
 int api_checknelems (TYPE_3__*,int) ;
 int luaD_poscall (TYPE_3__*,scalar_t__) ;
 int lua_assert (int) ;
 int lua_lock (TYPE_3__*) ;
 int lua_unlock (TYPE_3__*) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static void finishCcall (lua_State *L) {
  CallInfo *ci = L->ci;
  int n;
  lua_assert(ci->u.c.k != ((void*)0));
  lua_assert(L->nny == 0);
  if (ci->callstatus & CIST_YPCALL) {
    ci->callstatus &= ~CIST_YPCALL;
    L->errfunc = ci->u.c.old_errfunc;
  }

  adjustresults(L, ci->nresults);

  if (!(ci->callstatus & CIST_STAT))
    ci->u.c.status = LUA_YIELD;
  lua_assert(ci->u.c.status != LUA_OK);
  ci->callstatus = (ci->callstatus & ~(CIST_YPCALL | CIST_STAT)) | CIST_YIELDED;
  lua_unlock(L);
  n = (*ci->u.c.k)(L);
  lua_lock(L);
  api_checknelems(L, n);

  luaD_poscall(L, L->top - n);
}
