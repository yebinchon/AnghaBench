
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int freq_cmp ;
 int int_array_len (int*) ;
 int qsort (int*,int,int,int ) ;

void int_array_sort_unique(int *a)
{
 int alen;
 int i, j;

 if (a == ((void*)0))
  return;

 alen = int_array_len(a);
 qsort(a, alen, sizeof(int), freq_cmp);

 i = 0;
 j = 1;
 while (a[i] && a[j]) {
  if (a[i] == a[j]) {
   j++;
   continue;
  }
  a[++i] = a[j++];
 }
 if (a[i])
  i++;
 a[i] = 0;
}
