
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_free (int*) ;
 int* os_realloc_array (int*,int,int) ;

void int_array_add_unique(int **res, int a)
{
 int reslen;
 int *n;

 for (reslen = 0; *res && (*res)[reslen]; reslen++) {
  if ((*res)[reslen] == a)
   return;
 }

 n = os_realloc_array(*res, reslen + 2, sizeof(int));
 if (n == ((void*)0)) {
  os_free(*res);
  *res = ((void*)0);
  return;
 }

 n[reslen] = a;
 n[reslen + 1] = 0;

 *res = n;
}
