
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {void* idx; void* instack; int * name; } ;
struct TYPE_9__ {int L; } ;
struct TYPE_8__ {int sizeupvalues; TYPE_3__* upvalues; } ;
typedef TYPE_1__ Proto ;
typedef TYPE_2__ LoadState ;


 void* LoadByte (TYPE_2__*) ;
 int LoadInt (TYPE_2__*) ;
 int Upvaldesc ;
 TYPE_3__* luaM_newvector (int ,int,int ) ;

__attribute__((used)) static void LoadUpvalues (LoadState *S, Proto *f) {
  int i, n;
  n = LoadInt(S);
  f->upvalues = luaM_newvector(S->L, n, Upvaldesc);
  f->sizeupvalues = n;
  for (i = 0; i < n; i++)
    f->upvalues[i].name = ((void*)0);
  for (i = 0; i < n; i++) {
    f->upvalues[i].instack = LoadByte(S);
    f->upvalues[i].idx = LoadByte(S);
  }
}
