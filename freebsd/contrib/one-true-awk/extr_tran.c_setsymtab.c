
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int nelem; int size; TYPE_1__** tab; } ;
struct TYPE_8__ {unsigned int tval; int fval; void* sval; void* nval; struct TYPE_8__* cnext; int ctype; int csub; } ;
typedef TYPE_1__ Cell ;
typedef int Awkfloat ;
typedef TYPE_2__ Array ;


 int CUNK ;
 int FATAL (char*,char const*) ;
 int FULLTAB ;
 int NN (void*) ;
 int OCELL ;
 int dprintf (char*) ;
 int hash (char const*,int) ;
 TYPE_1__* lookup (char const*,TYPE_2__*) ;
 scalar_t__ malloc (int) ;
 int rehash (TYPE_2__*) ;
 void* tostring (char const*) ;

Cell *setsymtab(const char *n, const char *s, Awkfloat f, unsigned t, Array *tp)
{
 int h;
 Cell *p;

 if (n != ((void*)0) && (p = lookup(n, tp)) != ((void*)0)) {
     dprintf( ("setsymtab found %p: n=%s s=\"%s\" f=%g t=%o\n",
   (void*)p, NN(p->nval), NN(p->sval), p->fval, p->tval) );
  return(p);
 }
 p = (Cell *) malloc(sizeof(Cell));
 if (p == ((void*)0))
  FATAL("out of space for symbol table at %s", n);
 p->nval = tostring(n);
 p->sval = s ? tostring(s) : tostring("");
 p->fval = f;
 p->tval = t;
 p->csub = CUNK;
 p->ctype = OCELL;
 tp->nelem++;
 if (tp->nelem > FULLTAB * tp->size)
  rehash(tp);
 h = hash(n, tp->size);
 p->cnext = tp->tab[h];
 tp->tab[h] = p;
    dprintf( ("setsymtab set %p: n=%s s=\"%s\" f=%g t=%o\n",
  (void*)p, p->nval, p->sval, p->fval, p->tval) );
 return(p);
}
