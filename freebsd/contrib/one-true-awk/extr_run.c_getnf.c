
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int Cell ;


 scalar_t__ donefld ;
 int fldbld () ;

Cell *getnf(Node **a, int n)
{
 if (donefld == 0)
  fldbld();
 return (Cell *) a[0];
}
