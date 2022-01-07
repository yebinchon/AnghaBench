
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {char mode; int * fp; int * fname; } ;
struct TYPE_9__ {int sval; } ;
typedef int Node ;
typedef TYPE_1__ Cell ;
typedef int Awkfloat ;


 int EOF ;
 char LE ;
 int WARNING (char*,int *) ;
 TYPE_1__* execute (int *) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 TYPE_6__* files ;
 int getsval (TYPE_1__*) ;
 TYPE_1__* gettemp () ;
 int nfiles ;
 int pclose (int *) ;
 int setfval (TYPE_1__*,int ) ;
 scalar_t__ strcmp (int ,int *) ;
 int tempfree (TYPE_1__*) ;
 int xfree (int *) ;

Cell *closefile(Node **a, int n)
{
 Cell *x;
 int i, stat;

 x = execute(a[0]);
 getsval(x);
 stat = -1;
 for (i = 0; i < nfiles; i++) {
  if (files[i].fname && strcmp(x->sval, files[i].fname) == 0) {
   if (ferror(files[i].fp))
    WARNING( "i/o error occurred on %s", files[i].fname );
   if (files[i].mode == '|' || files[i].mode == LE)
    stat = pclose(files[i].fp);
   else
    stat = fclose(files[i].fp);
   if (stat == EOF)
    WARNING( "i/o error occurred closing %s", files[i].fname );
   if (i > 2)
    xfree(files[i].fname);
   files[i].fname = ((void*)0);
   files[i].fp = ((void*)0);
  }
 }
 tempfree(x);
 x = gettemp();
 setfval(x, (Awkfloat) stat);
 return(x);
}
