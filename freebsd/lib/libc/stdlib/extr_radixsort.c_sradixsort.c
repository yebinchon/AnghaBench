
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int a ;


 int SETUP ;
 int THRESHOLD ;
 int free (int const**) ;
 int ** malloc (int) ;
 int r_sort_b (int const**,int const**,int,int ,int const*,int ) ;
 int simplesort (int const**,int,int ,int const*,int ) ;

int
sradixsort(const u_char **a, int n, const u_char *tab, u_int endch)
{
 const u_char *tr, **ta;
 int c;
 u_char tr0[256];

 SETUP;
 if (n < THRESHOLD)
  simplesort(a, n, 0, tr, endch);
 else {
  if ((ta = malloc(n * sizeof(a))) == ((void*)0))
   return (-1);
  r_sort_b(a, ta, n, 0, tr, endch);
  free(ta);
 }
 return (0);
}
