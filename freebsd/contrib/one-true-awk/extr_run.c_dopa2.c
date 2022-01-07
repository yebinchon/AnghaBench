
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int Cell ;


 int * False ;
 int * execute (int *) ;
 scalar_t__ istrue (int *) ;
 int* pairstack ;
 int ptoi (int *) ;
 int tempfree (int *) ;

Cell *dopa2(Node **a, int n)
{
 Cell *x;
 int pair;

 pair = ptoi(a[3]);
 if (pairstack[pair] == 0) {
  x = execute(a[0]);
  if (istrue(x))
   pairstack[pair] = 1;
  tempfree(x);
 }
 if (pairstack[pair] == 1) {
  x = execute(a[1]);
  if (istrue(x))
   pairstack[pair] = 0;
  tempfree(x);
  x = execute(a[2]);
  return(x);
 }
 return(False);
}
