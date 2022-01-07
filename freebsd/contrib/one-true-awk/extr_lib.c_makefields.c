
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct Cell {int dummy; } ;
struct TYPE_4__ {int nval; } ;
typedef TYPE_1__ Cell ;


 int FATAL (char*,int) ;
 TYPE_1__ dollar1 ;
 TYPE_1__** fldtab ;
 scalar_t__ malloc (int) ;
 int sprintf (char*,char*,int) ;
 int tostring (char*) ;

void makefields(int n1, int n2)
{
 char temp[50];
 int i;

 for (i = n1; i <= n2; i++) {
  fldtab[i] = (Cell *) malloc(sizeof (struct Cell));
  if (fldtab[i] == ((void*)0))
   FATAL("out of space in makefields %d", i);
  *fldtab[i] = dollar1;
  sprintf(temp, "%d", i);
  fldtab[i]->nval = tostring(temp);
 }
}
