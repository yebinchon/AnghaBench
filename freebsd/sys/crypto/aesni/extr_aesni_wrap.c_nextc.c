
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __m128i ;


 int _mm_add_epi64 (int ,int const) ;
 int _mm_cmpeq_epi64 (int ,int const) ;
 int _mm_setr_epi32 (int ,int ,int,int ) ;
 int _mm_setzero_si128 () ;
 int _mm_sub_epi64 (int ,int ) ;
 int _mm_unpackhi_epi64 (int ,int const) ;

__attribute__((used)) static inline __m128i
nextc(__m128i x)
{
 const __m128i ONE = _mm_setr_epi32(0, 0, 1, 0);
 const __m128i ZERO = _mm_setzero_si128();

 x = _mm_add_epi64(x, ONE);
 __m128i t = _mm_cmpeq_epi64(x, ZERO);
 t = _mm_unpackhi_epi64(t, ZERO);
 x = _mm_sub_epi64(x, t);

 return x;
}
