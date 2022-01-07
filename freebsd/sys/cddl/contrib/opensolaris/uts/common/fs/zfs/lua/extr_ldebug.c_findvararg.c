
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* p; } ;
struct TYPE_8__ {int base; } ;
struct TYPE_9__ {TYPE_2__ l; } ;
struct TYPE_10__ {int func; TYPE_3__ u; } ;
struct TYPE_7__ {int numparams; } ;
typedef int StkId ;
typedef TYPE_4__ CallInfo ;


 TYPE_6__* clLvalue (int) ;

__attribute__((used)) static const char *findvararg (CallInfo *ci, int n, StkId *pos) {
  int nparams = clLvalue(ci->func)->p->numparams;
  if (n >= ci->u.l.base - ci->func - nparams)
    return ((void*)0);
  else {
    *pos = ci->func + nparams + n;
    return "(*vararg)";
  }
}
