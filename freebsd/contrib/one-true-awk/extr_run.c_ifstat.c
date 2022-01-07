
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int Cell ;


 int * execute (int *) ;
 scalar_t__ istrue (int *) ;
 int tempfree (int *) ;

Cell *ifstat(Node **a, int n)
{
 Cell *x;

 x = execute(a[0]);
 if (istrue(x)) {
  tempfree(x);
  x = execute(a[1]);
 } else if (a[2] != ((void*)0)) {
  tempfree(x);
  x = execute(a[2]);
 }
 return(x);
}
