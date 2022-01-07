
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __m128i ;


 int _mm_cmpeq_epi32 (int ,int ) ;
 int _mm_movemask_epi8 (int ) ;

__attribute__((used)) static inline int
m128icmp(__m128i a, __m128i b)
{
 __m128i cmp;

 cmp = _mm_cmpeq_epi32(a, b);

 return _mm_movemask_epi8(cmp) == 0xffff;
}
