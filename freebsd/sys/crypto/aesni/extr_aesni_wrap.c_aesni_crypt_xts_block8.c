
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int __m128i ;


 int PREPINP (int,int) ;
 int _mm_storeu_si128 (int*,int) ;
 int aesni_dec8 (int,int const*,int,int,int,int,int,int,int,int,int*) ;
 int aesni_enc8 (int,int const*,int,int,int,int,int,int,int,int,int*) ;

__attribute__((used)) static void
aesni_crypt_xts_block8(int rounds, const __m128i *key_schedule, __m128i *tweak,
    const uint8_t *from, uint8_t *to, int do_encrypt)
{
 __m128i tmptweak;
 __m128i a, b, c, d, e, f, g, h;
 __m128i tweaks[8];
 __m128i tmp[8];
 __m128i *top;
 const __m128i *fromp;

 tmptweak = *tweak;





 fromp = (const __m128i *)from;







 do { tweaks[(0)] = tmptweak; (a) = _mm_loadu_si128(&fromp[0]) ^ tmptweak; tmptweak = xts_crank_lfsr(tmptweak); } while (0);
 do { tweaks[(1)] = tmptweak; (b) = _mm_loadu_si128(&fromp[1]) ^ tmptweak; tmptweak = xts_crank_lfsr(tmptweak); } while (0);
 do { tweaks[(2)] = tmptweak; (c) = _mm_loadu_si128(&fromp[2]) ^ tmptweak; tmptweak = xts_crank_lfsr(tmptweak); } while (0);
 do { tweaks[(3)] = tmptweak; (d) = _mm_loadu_si128(&fromp[3]) ^ tmptweak; tmptweak = xts_crank_lfsr(tmptweak); } while (0);
 do { tweaks[(4)] = tmptweak; (e) = _mm_loadu_si128(&fromp[4]) ^ tmptweak; tmptweak = xts_crank_lfsr(tmptweak); } while (0);
 do { tweaks[(5)] = tmptweak; (f) = _mm_loadu_si128(&fromp[5]) ^ tmptweak; tmptweak = xts_crank_lfsr(tmptweak); } while (0);
 do { tweaks[(6)] = tmptweak; (g) = _mm_loadu_si128(&fromp[6]) ^ tmptweak; tmptweak = xts_crank_lfsr(tmptweak); } while (0);
 do { tweaks[(7)] = tmptweak; (h) = _mm_loadu_si128(&fromp[7]) ^ tmptweak; tmptweak = xts_crank_lfsr(tmptweak); } while (0);
 *tweak = tmptweak;

 if (do_encrypt)
  aesni_enc8(rounds - 1, key_schedule, a, b, c, d, e, f, g, h,
      tmp);
 else
  aesni_dec8(rounds - 1, key_schedule, a, b, c, d, e, f, g, h,
      tmp);

 top = (__m128i *)to;
 _mm_storeu_si128(&top[0], tmp[0] ^ tweaks[0]);
 _mm_storeu_si128(&top[1], tmp[1] ^ tweaks[1]);
 _mm_storeu_si128(&top[2], tmp[2] ^ tweaks[2]);
 _mm_storeu_si128(&top[3], tmp[3] ^ tweaks[3]);
 _mm_storeu_si128(&top[4], tmp[4] ^ tweaks[4]);
 _mm_storeu_si128(&top[5], tmp[5] ^ tweaks[5]);
 _mm_storeu_si128(&top[6], tmp[6] ^ tweaks[6]);
 _mm_storeu_si128(&top[7], tmp[7] ^ tweaks[7]);
}
