
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int BIGSIGMA0_256 (int) ;
 int BIGSIGMA1_256 (int) ;
 int Ch (int,int,int) ;
 int Maj (int,int,int) ;
 int* SHA256_K ;
 int SIGMA0_256 (int) ;
 int SIGMA1_256 (int) ;

__attribute__((used)) static void
SHA256Transform(uint32_t *H, const uint8_t *cp)
{
 uint32_t a, b, c, d, e, f, g, h, t, T1, T2, W[64];


 for (t = 0; t < 16; t++, cp += sizeof (uint32_t))
  W[t] = (cp[0] << 24) | (cp[1] << 16) | (cp[2] << 8) | cp[3];


 for (t = 16; t < 64; t++)
  W[t] = SIGMA1_256(W[t - 2]) + W[t - 7] +
      SIGMA0_256(W[t - 15]) + W[t - 16];


 a = H[0]; b = H[1]; c = H[2]; d = H[3];
 e = H[4]; f = H[5]; g = H[6]; h = H[7];


 for (t = 0; t < 64; t++) {
  T1 = h + BIGSIGMA1_256(e) + Ch(e, f, g) + SHA256_K[t] + W[t];
  T2 = BIGSIGMA0_256(a) + Maj(a, b, c);
  h = g; g = f; f = e; e = d + T1;
  d = c; c = b; b = a; a = T1 + T2;
 }


 H[0] += a; H[1] += b; H[2] += c; H[3] += d;
 H[4] += e; H[5] += f; H[6] += g; H[7] += h;
}
