
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int freq_included(const unsigned int freqs[], unsigned int num,
    unsigned int freq)
{
 while (num > 0) {
  if (freqs[--num] == freq)
   return 1;
 }
 return 0;
}
