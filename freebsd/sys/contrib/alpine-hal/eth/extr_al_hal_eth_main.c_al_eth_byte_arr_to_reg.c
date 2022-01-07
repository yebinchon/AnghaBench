
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int AL_REG_FIELD_SET (int,int,int,int ) ;
 int al_assert (int) ;

__attribute__((used)) static inline void al_eth_byte_arr_to_reg(
  uint32_t *reg, uint8_t *arr, unsigned int num_bytes)
{
 uint32_t mask = 0xff;
 unsigned int i;

 al_assert(num_bytes <= 4);

 *reg = 0;

 for (i = 0 ; i < num_bytes ; i++) {
  AL_REG_FIELD_SET(*reg, mask, (sizeof(uint8_t) * i), arr[i]);
  mask = mask << sizeof(uint8_t);
 }
}
