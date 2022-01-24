#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {scalar_t__ top; } ;
typedef  TYPE_2__ lua_State ;
typedef  int /*<<< orphan*/  ZIO ;
struct TYPE_20__ {TYPE_3__* p; } ;
struct TYPE_24__ {TYPE_1__ l; } ;
struct TYPE_23__ {char const* name; int /*<<< orphan*/ * b; int /*<<< orphan*/ * Z; TYPE_2__* L; } ;
struct TYPE_22__ {int sizeupvalues; } ;
typedef  TYPE_3__ Proto ;
typedef  int /*<<< orphan*/  Mbuffer ;
typedef  TYPE_4__ LoadState ;
typedef  TYPE_5__ Closure ;

/* Variables and functions */
 char const* LUA_SIGNATURE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_5__* FUNC3 (TYPE_2__*,int) ; 
 TYPE_3__* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__,TYPE_5__*) ; 

Closure* FUNC7 (lua_State* L, ZIO* Z, Mbuffer* buff, const char* name)
{
 LoadState S;
 Closure* cl;
 if (*name=='@' || *name=='=')
  S.name=name+1;
 else if (*name==LUA_SIGNATURE[0])
  S.name="binary string";
 else
  S.name=name;
 S.L=L;
 S.Z=Z;
 S.b=buff;
 FUNC1(&S);
 cl=FUNC3(L,1);
 FUNC6(L,L->top,cl); FUNC2(L);
 cl->l.p=FUNC4(L);
 FUNC0(&S,cl->l.p);
 if (cl->l.p->sizeupvalues != 1)
 {
  Proto* p=cl->l.p;
  cl=FUNC3(L,cl->l.p->sizeupvalues);
  cl->l.p=p;
  FUNC6(L,L->top-1,cl);
 }
 FUNC5(L,buff,cl->l.p);
 return cl;
}