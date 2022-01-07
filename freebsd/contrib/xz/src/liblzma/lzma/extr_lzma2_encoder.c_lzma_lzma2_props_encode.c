
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int lzma_ret ;
struct TYPE_2__ {int dict_size; } ;
typedef TYPE_1__ lzma_options_lzma ;


 int LZMA_DICT_SIZE_MIN ;
 int LZMA_OK ;
 int UINT32_MAX ;
 int get_dist_slot (int) ;
 int my_max (int ,int ) ;

extern lzma_ret
lzma_lzma2_props_encode(const void *options, uint8_t *out)
{
 const lzma_options_lzma *const opt = options;
 uint32_t d = my_max(opt->dict_size, LZMA_DICT_SIZE_MIN);



 --d;
 d |= d >> 2;
 d |= d >> 3;
 d |= d >> 4;
 d |= d >> 8;
 d |= d >> 16;


 if (d == UINT32_MAX)
  out[0] = 40;
 else
  out[0] = get_dist_slot(d + 1) - 24;

 return LZMA_OK;
}
