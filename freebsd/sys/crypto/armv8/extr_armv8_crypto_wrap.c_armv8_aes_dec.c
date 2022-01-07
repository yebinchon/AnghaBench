
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8x16_t ;


 int vaesdq_u8 (int ,int const) ;
 int vaesimcq_u8 (int ) ;
 int veorq_u8 (int ,int const) ;

__attribute__((used)) static uint8x16_t
armv8_aes_dec(int rounds, const uint8x16_t *keysched, const uint8x16_t from)
{
 uint8x16_t tmp;
 int i;

 tmp = from;
 for (i = 0; i < rounds - 1; i += 2) {
  tmp = vaesdq_u8(tmp, keysched[i]);
  tmp = vaesimcq_u8(tmp);
  tmp = vaesdq_u8(tmp, keysched[i+1]);
  tmp = vaesimcq_u8(tmp);
 }

 tmp = vaesdq_u8(tmp, keysched[rounds - 1]);
 tmp = vaesimcq_u8(tmp);
 tmp = vaesdq_u8(tmp, keysched[rounds]);
 tmp = veorq_u8(tmp, keysched[rounds + 1]);

 return (tmp);
}
