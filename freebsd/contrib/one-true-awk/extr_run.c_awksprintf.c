
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {char* sval; int tval; } ;
struct TYPE_11__ {struct TYPE_11__* nnext; } ;
typedef TYPE_1__ Node ;
typedef TYPE_2__ Cell ;


 int FATAL (char*,...) ;
 int STR ;
 TYPE_2__* execute (TYPE_1__*) ;
 int format (char**,int*,int ,TYPE_1__*) ;
 int getsval (TYPE_2__*) ;
 TYPE_2__* gettemp () ;
 scalar_t__ malloc (int) ;
 int recsize ;
 int tempfree (TYPE_2__*) ;

Cell *awksprintf(Node **a, int n)
{
 Cell *x;
 Node *y;
 char *buf;
 int bufsz=3*recsize;

 if ((buf = (char *) malloc(bufsz)) == ((void*)0))
  FATAL("out of memory in awksprintf");
 y = a[0]->nnext;
 x = execute(a[0]);
 if (format(&buf, &bufsz, getsval(x), y) == -1)
  FATAL("sprintf string %.30s... too long.  can't happen.", buf);
 tempfree(x);
 x = gettemp();
 x->sval = buf;
 x->tval = STR;
 return(x);
}
