
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;


 int SETUP ;
 int r_sort_a (int const**,int,int ,int const*,int ) ;

int
radixsort(const u_char **a, int n, const u_char *tab, u_int endch)
{
 const u_char *tr;
 int c;
 u_char tr0[256];

 SETUP;
 r_sort_a(a, n, 0, tr, endch);
 return (0);
}
