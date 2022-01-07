
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int Cell ;
typedef double Awkfloat ;


 int * execute (int *) ;
 char* getsval (int *) ;
 int * gettemp () ;
 int setfval (int *,double) ;
 int tempfree (int *) ;

Cell *sindex(Node **a, int nnn)
{
 Cell *x, *y, *z;
 char *s1, *s2, *p1, *p2, *q;
 Awkfloat v = 0.0;

 x = execute(a[0]);
 s1 = getsval(x);
 y = execute(a[1]);
 s2 = getsval(y);

 z = gettemp();
 for (p1 = s1; *p1 != '\0'; p1++) {
  for (q=p1, p2=s2; *p2 != '\0' && *q == *p2; q++, p2++)
   ;
  if (*p2 == '\0') {
   v = (Awkfloat) (p1 - s1 + 1);
   break;
  }
 }
 tempfree(x);
 tempfree(y);
 setfval(z, v);
 return(z);
}
