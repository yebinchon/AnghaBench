
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void add_freq(int *freqs, int *num_freqs, int freq)
{
 int i;

 for (i = 0; i < *num_freqs; i++) {
  if (freqs[i] == freq)
   return;
 }

 freqs[*num_freqs] = freq;
 (*num_freqs)++;
}
