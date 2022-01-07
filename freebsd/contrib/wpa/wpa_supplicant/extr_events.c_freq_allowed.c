
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int freq_allowed(int *freqs, int freq)
{
 int i;

 if (freqs == ((void*)0))
  return 1;

 for (i = 0; freqs[i]; i++)
  if (freqs[i] == freq)
   return 1;
 return 0;
}
