
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int maxstacksize; int is_vararg; int numparams; int lastlinedefined; int linedefined; } ;
typedef TYPE_1__ Proto ;
typedef int DumpState ;


 int DumpChar (int ,int *) ;
 int DumpCode (TYPE_1__ const*,int *) ;
 int DumpConstants (TYPE_1__ const*,int *) ;
 int DumpDebug (TYPE_1__ const*,int *) ;
 int DumpInt (int ,int *) ;
 int DumpUpvalues (TYPE_1__ const*,int *) ;

__attribute__((used)) static void DumpFunction(const Proto* f, DumpState* D)
{
 DumpInt(f->linedefined,D);
 DumpInt(f->lastlinedefined,D);
 DumpChar(f->numparams,D);
 DumpChar(f->is_vararg,D);
 DumpChar(f->maxstacksize,D);
 DumpCode(f,D);
 DumpConstants(f,D);
 DumpUpvalues(f,D);
 DumpDebug(f,D);
}
