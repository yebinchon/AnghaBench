
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* ci; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_6__ {int callstatus; struct TYPE_6__* previous; } ;
typedef TYPE_2__ CallInfo ;


 int CIST_YPCALL ;

__attribute__((used)) static CallInfo *findpcall (lua_State *L) {
  CallInfo *ci;
  for (ci = L->ci; ci != ((void*)0); ci = ci->previous) {
    if (ci->callstatus & CIST_YPCALL)
      return ci;
  }
  return ((void*)0);
}
