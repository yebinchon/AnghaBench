
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
ssort(int v[], int nmemb)
{
 int i, j, k;

 for (i = 0; i < nmemb; i++) {
  for (j = i + 1; j < nmemb; j++) {
   if (v[j] < v[i]) {
    k = v[i];
    v[i] = v[j];
    v[j] = k;
   }
  }
 }
}
