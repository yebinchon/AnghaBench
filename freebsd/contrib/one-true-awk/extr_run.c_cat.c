
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* sval; int tval; } ;
typedef int Node ;
typedef TYPE_1__ Cell ;


 int STR ;
 int adjbuf (char**,int*,int,int ,int ,char*) ;
 TYPE_1__* execute (int *) ;
 int getsval (TYPE_1__*) ;
 TYPE_1__* gettemp () ;
 int recsize ;
 int strlen (int ) ;
 int strncpy (char*,char*,int) ;
 int tempfree (TYPE_1__*) ;

Cell *cat(Node **a, int q)
{
 Cell *x, *y, *z;
 int n1, n2;
 char *s = ((void*)0);
 int ssz = 0;

 x = execute(a[0]);
 n1 = strlen(getsval(x));
 adjbuf(&s, &ssz, n1 + 1, recsize, 0, "cat1");
 (void) strncpy(s, x->sval, ssz);

 y = execute(a[1]);
 n2 = strlen(getsval(y));
 adjbuf(&s, &ssz, n1 + n2 + 1, recsize, 0, "cat2");
 (void) strncpy(s + n1, y->sval, ssz - n1);

 tempfree(x);
 tempfree(y);

 z = gettemp();
 z->sval = s;
 z->tval = STR;

 return(z);
}
