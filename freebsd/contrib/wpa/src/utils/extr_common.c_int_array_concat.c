
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int int_array_len (int const*) ;
 int os_free (int*) ;
 int* os_realloc_array (int*,int,int) ;

void int_array_concat(int **res, const int *a)
{
 int reslen, alen, i;
 int *n;

 reslen = int_array_len(*res);
 alen = int_array_len(a);

 n = os_realloc_array(*res, reslen + alen + 1, sizeof(int));
 if (n == ((void*)0)) {
  os_free(*res);
  *res = ((void*)0);
  return;
 }
 for (i = 0; i <= alen; i++)
  n[reslen + i] = a[i];
 *res = n;
}
