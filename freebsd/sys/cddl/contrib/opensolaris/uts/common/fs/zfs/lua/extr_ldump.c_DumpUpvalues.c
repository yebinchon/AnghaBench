
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int sizeupvalues; TYPE_1__* upvalues; } ;
struct TYPE_4__ {int idx; int instack; } ;
typedef TYPE_2__ Proto ;
typedef int DumpState ;


 int DumpChar (int ,int *) ;
 int DumpInt (int,int *) ;

__attribute__((used)) static void DumpUpvalues(const Proto* f, DumpState* D)
{
 int i,n=f->sizeupvalues;
 DumpInt(n,D);
 for (i=0; i<n; i++)
 {
  DumpChar(f->upvalues[i].instack,D);
  DumpChar(f->upvalues[i].idx,D);
 }
}
