
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sizecode; int code; } ;
typedef TYPE_1__ Proto ;
typedef int DumpState ;


 int DumpInt (int ,int *) ;
 int DumpVector (int ,int ,int *) ;

__attribute__((used)) static void DumpCode (const Proto *f, DumpState *D) {
  DumpInt(f->sizecode, D);
  DumpVector(f->code, f->sizecode, D);
}
