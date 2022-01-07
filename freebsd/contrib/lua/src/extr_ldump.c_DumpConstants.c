
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sizek; int * k; } ;
typedef int TValue ;
typedef TYPE_1__ Proto ;
typedef int DumpState ;


 int DumpByte (int,int *) ;
 int DumpInt (int,int *) ;
 int DumpInteger (int ,int *) ;
 int DumpNumber (int ,int *) ;
 int DumpString (int ,int *) ;






 int bvalue (int const*) ;
 int fltvalue (int const*) ;
 int ivalue (int const*) ;
 int lua_assert (int ) ;
 int tsvalue (int const*) ;
 int ttype (int const*) ;

__attribute__((used)) static void DumpConstants (const Proto *f, DumpState *D) {
  int i;
  int n = f->sizek;
  DumpInt(n, D);
  for (i = 0; i < n; i++) {
    const TValue *o = &f->k[i];
    DumpByte(ttype(o), D);
    switch (ttype(o)) {
    case 131:
      break;
    case 133:
      DumpByte(bvalue(o), D);
      break;
    case 130:
      DumpNumber(fltvalue(o), D);
      break;
    case 129:
      DumpInteger(ivalue(o), D);
      break;
    case 128:
    case 132:
      DumpString(tsvalue(o), D);
      break;
    default:
      lua_assert(0);
    }
  }
}
