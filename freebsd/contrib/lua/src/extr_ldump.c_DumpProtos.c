
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sizep; int source; int * p; } ;
typedef TYPE_1__ Proto ;
typedef int DumpState ;


 int DumpFunction (int ,int ,int *) ;
 int DumpInt (int,int *) ;

__attribute__((used)) static void DumpProtos (const Proto *f, DumpState *D) {
  int i;
  int n = f->sizep;
  DumpInt(n, D);
  for (i = 0; i < n; i++)
    DumpFunction(f->p[i], f->source, D);
}
