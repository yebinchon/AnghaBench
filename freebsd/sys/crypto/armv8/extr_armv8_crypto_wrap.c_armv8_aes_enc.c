
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8x16_t ;


 int vaeseq_u8 (int ,int const) ;
 int vaesmcq_u8 (int ) ;
 int veorq_u8 (int ,int const) ;

__attribute__((used)) static uint8x16_t
armv8_aes_enc(int rounds, const uint8x16_t *keysched, const uint8x16_t from)
{
 uint8x16_t tmp;
 int i;

 tmp = from;
 for (i = 0; i < rounds - 1; i += 2) {
  tmp = vaeseq_u8(tmp, keysched[i]);
  tmp = vaesmcq_u8(tmp);
  tmp = vaeseq_u8(tmp, keysched[i + 1]);
  tmp = vaesmcq_u8(tmp);
 }

 tmp = vaeseq_u8(tmp, keysched[rounds - 1]);
 tmp = vaesmcq_u8(tmp);
 tmp = vaeseq_u8(tmp, keysched[rounds]);
 tmp = veorq_u8(tmp, keysched[rounds + 1]);

 return (tmp);
}
