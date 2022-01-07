
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int Cell ;


 int dprintf (char*) ;
 int * execute (int *) ;
 scalar_t__ getfval (int *) ;
 char* getsval (int *) ;
 int * gettemp () ;
 int setsval (int *,char*) ;
 int strlen (char*) ;
 int tempfree (int *) ;

Cell *substr(Node **a, int nnn)
{
 int k, m, n;
 char *s;
 int temp;
 Cell *x, *y, *z = ((void*)0);

 x = execute(a[0]);
 y = execute(a[1]);
 if (a[2] != ((void*)0))
  z = execute(a[2]);
 s = getsval(x);
 k = strlen(s) + 1;
 if (k <= 1) {
  tempfree(x);
  tempfree(y);
  if (a[2] != ((void*)0)) {
   tempfree(z);
  }
  x = gettemp();
  setsval(x, "");
  return(x);
 }
 m = (int) getfval(y);
 if (m <= 0)
  m = 1;
 else if (m > k)
  m = k;
 tempfree(y);
 if (a[2] != ((void*)0)) {
  n = (int) getfval(z);
  tempfree(z);
 } else
  n = k - 1;
 if (n < 0)
  n = 0;
 else if (n > k - m)
  n = k - m;
    dprintf( ("substr: m=%d, n=%d, s=%s\n", m, n, s) );
 y = gettemp();
 temp = s[n+m-1];
 s[n+m-1] = '\0';
 setsval(y, s + m - 1);
 s[n+m-1] = temp;
 tempfree(x);
 return(y);
}
