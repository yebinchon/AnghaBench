
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int8_t ;


 int AL_BIT (int) ;
 int AL_SERDES_25G_RX_DIAG_SIGNED_5BIT_ABS_MASK ;
 int AL_SERDES_25G_RX_DIAG_SIGNED_5BIT_SIGN_SHIFT ;

__attribute__((used)) static inline void al_serdes_25g_rx_diag_5bit_signed_set(uint8_t packed_val, int8_t *ptr)
{
 uint8_t abs, sign;

 abs = packed_val & AL_SERDES_25G_RX_DIAG_SIGNED_5BIT_ABS_MASK;
 sign = (packed_val & AL_BIT(AL_SERDES_25G_RX_DIAG_SIGNED_5BIT_SIGN_SHIFT)) >>
   AL_SERDES_25G_RX_DIAG_SIGNED_5BIT_SIGN_SHIFT;
 if (sign)
  *ptr = abs;
 else
  *ptr = 0 - abs;
}
