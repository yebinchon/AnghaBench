
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int pt_ext_psb ;
 int pt_opc_psb ;
 int pt_psb_hi ;
 int pt_psb_lo ;
 int pt_psb_repeat_count ;

__attribute__((used)) static void sfix_encode_psb(uint8_t *pos)
{
 int i;

 *pos++ = pt_opc_psb;
 *pos++ = pt_ext_psb;

 for (i = 0; i < pt_psb_repeat_count; ++i) {
  *pos++ = pt_psb_hi;
  *pos++ = pt_psb_lo;
 }
}
