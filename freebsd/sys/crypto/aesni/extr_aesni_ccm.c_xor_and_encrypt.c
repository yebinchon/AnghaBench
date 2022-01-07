
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __m128i ;


 int AESNI_ENC (int ,unsigned char const*,int) ;
 int _mm_xor_si128 (int ,int ) ;

__attribute__((used)) static inline __m128i
xor_and_encrypt(__m128i a, __m128i b, const unsigned char *k, int nr)
{
 __m128i retval = _mm_xor_si128(a, b);

 retval = AESNI_ENC(retval, k, nr);
 return (retval);
}
