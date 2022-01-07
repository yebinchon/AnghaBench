
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ status; scalar_t__ (* writer ) (int ,void const*,size_t,int ) ;int L; int data; } ;
typedef TYPE_1__ DumpState ;


 int lua_lock (int ) ;
 int lua_unlock (int ) ;
 scalar_t__ stub1 (int ,void const*,size_t,int ) ;

__attribute__((used)) static void DumpBlock(const void* b, size_t size, DumpState* D)
{
 if (D->status==0)
 {
  lua_unlock(D->L);
  D->status=(*D->writer)(D->L,b,size,D->data);
  lua_lock(D->L);
 }
}
