
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline void ib_vl_arb_get_vl(uint8_t res_vl, uint8_t * const vl)
{
 *vl = res_vl & 0x0F;
}
