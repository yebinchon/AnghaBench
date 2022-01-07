
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int freqs ;


 int os_memmove (unsigned int*,unsigned int*,unsigned int) ;

__attribute__((used)) static void freq_to_start(unsigned int freqs[], unsigned int num,
     unsigned int freq)
{
 unsigned int i;

 for (i = 0; i < num; i++) {
  if (freqs[i] == freq)
   break;
 }
 if (i == 0 || i >= num)
  return;
 os_memmove(&freqs[1], &freqs[0], i * sizeof(freqs[0]));
 freqs[0] = freq;
}
