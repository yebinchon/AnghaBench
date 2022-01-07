
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_19__ {int currentline; int isvararg; int istailcall; char* namewhat; int * name; int nparams; int nups; } ;
typedef TYPE_4__ lua_Debug ;
struct TYPE_21__ {int callstatus; struct TYPE_21__* previous; } ;
struct TYPE_18__ {TYPE_2__* p; } ;
struct TYPE_16__ {int nupvalues; } ;
struct TYPE_20__ {TYPE_3__ l; TYPE_1__ c; } ;
struct TYPE_17__ {int is_vararg; int numparams; } ;
typedef TYPE_5__ Closure ;
typedef TYPE_6__ CallInfo ;


 int CIST_TAIL ;
 int currentline (TYPE_6__*) ;
 int funcinfo (TYPE_4__*,TYPE_5__*) ;
 char* getfuncname (int *,TYPE_6__*,int **) ;
 int isLua (TYPE_6__*) ;
 int noLuaClosure (TYPE_5__*) ;

__attribute__((used)) static int auxgetinfo (lua_State *L, const char *what, lua_Debug *ar,
                       Closure *f, CallInfo *ci) {
  int status = 1;
  for (; *what; what++) {
    switch (*what) {
      case 'S': {
        funcinfo(ar, f);
        break;
      }
      case 'l': {
        ar->currentline = (ci && isLua(ci)) ? currentline(ci) : -1;
        break;
      }
      case 'u': {
        ar->nups = (f == ((void*)0)) ? 0 : f->c.nupvalues;
        if (noLuaClosure(f)) {
          ar->isvararg = 1;
          ar->nparams = 0;
        }
        else {
          ar->isvararg = f->l.p->is_vararg;
          ar->nparams = f->l.p->numparams;
        }
        break;
      }
      case 't': {
        ar->istailcall = (ci) ? ci->callstatus & CIST_TAIL : 0;
        break;
      }
      case 'n': {

        if (ci && !(ci->callstatus & CIST_TAIL) && isLua(ci->previous))
          ar->namewhat = getfuncname(L, ci->previous, &ar->name);
        else
          ar->namewhat = ((void*)0);
        if (ar->namewhat == ((void*)0)) {
          ar->namewhat = "";
          ar->name = ((void*)0);
        }
        break;
      }
      case 'L':
      case 'f':
        break;
      default: status = 0;
    }
  }
  return status;
}
