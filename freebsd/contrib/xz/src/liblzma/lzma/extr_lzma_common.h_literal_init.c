
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
typedef int probability ;


 unsigned int LITERAL_CODER_SIZE ;
 unsigned int LZMA_LCLP_MAX ;
 int assert (int) ;
 int bit_reset (int ) ;

__attribute__((used)) static inline void
literal_init(probability (*probs)[LITERAL_CODER_SIZE],
  uint32_t lc, uint32_t lp)
{
 assert(lc + lp <= LZMA_LCLP_MAX);

 const uint32_t coders = 1U << (lc + lp);

 for (uint32_t i = 0; i < coders; ++i)
  for (uint32_t j = 0; j < LITERAL_CODER_SIZE; ++j)
   bit_reset(probs[i][j]);

 return;
}
