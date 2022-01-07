
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* nnext; } ;
typedef TYPE_1__ Node ;
typedef int FILE ;
typedef int Cell ;


 int FATAL (char*,...) ;
 int * True ;
 int * execute (TYPE_1__*) ;
 scalar_t__ ferror (int *) ;
 int fflush (int *) ;
 char* filename (int *) ;
 int format (char**,int*,int ,TYPE_1__*) ;
 int free (char*) ;
 int fwrite (char*,int,int,int *) ;
 int getsval (int *) ;
 scalar_t__ malloc (int) ;
 int ptoi (TYPE_1__*) ;
 int recsize ;
 int * redirect (int ,TYPE_1__*) ;
 int * stdout ;
 int tempfree (int *) ;

Cell *awkprintf(Node **a, int n)
{

 FILE *fp;
 Cell *x;
 Node *y;
 char *buf;
 int len;
 int bufsz=3*recsize;

 if ((buf = (char *) malloc(bufsz)) == ((void*)0))
  FATAL("out of memory in awkprintf");
 y = a[0]->nnext;
 x = execute(a[0]);
 if ((len = format(&buf, &bufsz, getsval(x), y)) == -1)
  FATAL("printf string %.30s... too long.  can't happen.", buf);
 tempfree(x);
 if (a[1] == ((void*)0)) {

  fwrite(buf, len, 1, stdout);
  if (ferror(stdout))
   FATAL("write error on stdout");
 } else {
  fp = redirect(ptoi(a[1]), a[2]);

  fwrite(buf, len, 1, fp);
  fflush(fp);
  if (ferror(fp))
   FATAL("write error on %s", filename(fp));
 }
 free(buf);
 return(True);
}
