
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char* sval; int fval; int nval; int tval; } ;
struct TYPE_7__ {struct TYPE_7__* nnext; } ;
typedef TYPE_1__ Node ;
typedef TYPE_2__ Cell ;


 int FCN ;
 int SYNTAX (char*,int ) ;
 int dprintf (char*) ;
 int isarg (int ) ;
 scalar_t__ isarr (TYPE_2__*) ;

void defn(Cell *v, Node *vl, Node *st)
{
 Node *p;
 int n;

 if (isarr(v)) {
  SYNTAX( "`%s' is an array name and a function name", v->nval );
  return;
 }
 if (isarg(v->nval) != -1) {
  SYNTAX( "`%s' is both function name and argument name", v->nval );
  return;
 }

 v->tval = FCN;
 v->sval = (char *) st;
 n = 0;
 for (p = vl; p; p = p->nnext)
  n++;
 v->fval = n;
 dprintf( ("defining func %s (%d args)\n", v->nval, n) );
}
