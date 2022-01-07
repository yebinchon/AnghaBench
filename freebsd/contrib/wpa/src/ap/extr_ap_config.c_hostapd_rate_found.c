
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int hostapd_rate_found(int *list, int rate)
{
 int i;

 if (list == ((void*)0))
  return 0;

 for (i = 0; list[i] >= 0; i++)
  if (list[i] == rate)
   return 1;

 return 0;
}
