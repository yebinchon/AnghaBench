
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; } ;
struct TYPE_6__ {TYPE_1__ tsv; } ;
typedef TYPE_2__ TString ;
typedef int DumpState ;


 int DumpBlock (int ,size_t,int *) ;
 int DumpVar (size_t,int *) ;
 int getstr (TYPE_2__ const*) ;

__attribute__((used)) static void DumpString(const TString* s, DumpState* D)
{
 if (s==((void*)0))
 {
  size_t size=0;
  DumpVar(size,D);
 }
 else
 {
  size_t size=s->tsv.len+1;
  DumpVar(size,D);
  DumpBlock(getstr(s),size*sizeof(char),D);
 }
}
