
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NEXCEPTS ;
 unsigned int* std_except_sets ;
 unsigned int* std_excepts ;

__attribute__((used)) static void
init_exceptsets(void)
{
 unsigned i, j, sr;

 for (i = 0; i < 1 << NEXCEPTS; i++) {
  for (sr = i, j = 0; sr != 0; sr >>= 1, j++)
   std_except_sets[i] |= std_excepts[j] & ((~sr & 1) - 1);
 }
}
