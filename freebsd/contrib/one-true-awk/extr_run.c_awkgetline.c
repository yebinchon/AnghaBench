
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int tval; int sval; void* fval; } ;
typedef int Node ;
typedef int FILE ;
typedef TYPE_1__ Cell ;
typedef int Awkfloat ;


 int FATAL (char*) ;
 int LE ;
 int NUM ;
 void* atof (int ) ;
 TYPE_1__* execute (int *) ;
 int fflush (int ) ;
 int free (char*) ;
 int getrec (char**,int*,int) ;
 int getsval (TYPE_1__*) ;
 TYPE_1__* gettemp () ;
 scalar_t__ is_number (int ) ;
 scalar_t__ malloc (int) ;
 int * openfile (int,int ) ;
 int ptoi (int *) ;
 int readrec (char**,int*,int *) ;
 char* record ;
 int recsize ;
 int setfval (TYPE_1__*,int ) ;
 int setsval (TYPE_1__*,char*) ;
 int stdout ;
 int tempfree (TYPE_1__*) ;

Cell *awkgetline(Node **a, int n)
{
 Cell *r, *x;
 extern Cell **fldtab;
 FILE *fp;
 char *buf;
 int bufsize = recsize;
 int mode;

 if ((buf = (char *) malloc(bufsize)) == ((void*)0))
  FATAL("out of memory in getline");

 fflush(stdout);
 r = gettemp();
 if (a[1] != ((void*)0)) {
  x = execute(a[2]);
  mode = ptoi(a[1]);
  if (mode == '|')
   mode = LE;
  fp = openfile(mode, getsval(x));
  tempfree(x);
  if (fp == ((void*)0))
   n = -1;
  else
   n = readrec(&buf, &bufsize, fp);
  if (n <= 0) {
   ;
  } else if (a[0] != ((void*)0)) {
   x = execute(a[0]);
   setsval(x, buf);
   if (is_number(x->sval)) {
    x->fval = atof(x->sval);
    x->tval |= NUM;
   }
   tempfree(x);
  } else {
   setsval(fldtab[0], buf);
   if (is_number(fldtab[0]->sval)) {
    fldtab[0]->fval = atof(fldtab[0]->sval);
    fldtab[0]->tval |= NUM;
   }
  }
 } else {
  if (a[0] == ((void*)0))
   n = getrec(&record, &recsize, 1);
  else {
   n = getrec(&buf, &bufsize, 0);
   x = execute(a[0]);
   setsval(x, buf);
   if (is_number(x->sval)) {
    x->fval = atof(x->sval);
    x->tval |= NUM;
   }
   tempfree(x);
  }
 }
 setfval(r, (Awkfloat) n);
 free(buf);
 return r;
}
