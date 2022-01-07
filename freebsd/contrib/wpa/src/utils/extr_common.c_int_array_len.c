
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int int_array_len(const int *a)
{
 int i;
 for (i = 0; a && a[i]; i++)
  ;
 return i;
}
