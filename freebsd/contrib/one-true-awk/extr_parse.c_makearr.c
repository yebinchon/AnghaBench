
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {char* sval; int tval; int nval; } ;
struct TYPE_8__ {scalar_t__* narg; } ;
typedef TYPE_1__ Node ;
typedef TYPE_2__ Cell ;


 int ARR ;
 int NSYMTAB ;
 int SYNTAX (char*,int ) ;
 int isarr (TYPE_2__*) ;
 scalar_t__ isfcn (TYPE_2__*) ;
 scalar_t__ isvalue (TYPE_1__*) ;
 scalar_t__ makesymtab (int ) ;
 int xfree (char*) ;

Node *makearr(Node *p)
{
 Cell *cp;

 if (isvalue(p)) {
  cp = (Cell *) (p->narg[0]);
  if (isfcn(cp))
   SYNTAX( "%s is a function, not an array", cp->nval );
  else if (!isarr(cp)) {
   xfree(cp->sval);
   cp->sval = (char *) makesymtab(NSYMTAB);
   cp->tval = ARR;
  }
 }
 return p;
}
