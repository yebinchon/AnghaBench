
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
_cmpndewey(int d1[], int n1, int d2[], int n2)
{
 int i;

 for (i = 0; i < n1 && i < n2; i++) {
  if (d1[i] < d2[i])
   return (-1);
  if (d1[i] > d2[i])
   return (1);
 }

 if (n1 == n2)
  return (0);

 if (i == n1)
  return (-1);

 if (i == n2)
  return (1);


 return (0);
}
