
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ strip; } ;
struct TYPE_12__ {int sizelineinfo; int sizelocvars; int sizeupvalues; TYPE_2__* upvalues; TYPE_1__* locvars; int lineinfo; int * source; } ;
struct TYPE_11__ {int * name; } ;
struct TYPE_10__ {int startpc; int endpc; int * varname; } ;
typedef TYPE_3__ Proto ;
typedef TYPE_4__ DumpState ;


 int DumpInt (int,TYPE_4__*) ;
 int DumpString (int *,TYPE_4__*) ;
 int DumpVector (int ,int,int,TYPE_4__*) ;

__attribute__((used)) static void DumpDebug(const Proto* f, DumpState* D)
{
 int i,n;
 DumpString((D->strip) ? ((void*)0) : f->source,D);
 n= (D->strip) ? 0 : f->sizelineinfo;
 DumpVector(f->lineinfo,n,sizeof(int),D);
 n= (D->strip) ? 0 : f->sizelocvars;
 DumpInt(n,D);
 for (i=0; i<n; i++)
 {
  DumpString(f->locvars[i].varname,D);
  DumpInt(f->locvars[i].startpc,D);
  DumpInt(f->locvars[i].endpc,D);
 }
 n= (D->strip) ? 0 : f->sizeupvalues;
 DumpInt(n,D);
 for (i=0; i<n; i++) DumpString(f->upvalues[i].name,D);
}
