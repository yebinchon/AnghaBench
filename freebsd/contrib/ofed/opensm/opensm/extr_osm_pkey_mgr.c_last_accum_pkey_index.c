
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int last_pkey_idx; } ;
typedef TYPE_1__ osm_pkey_tbl_t ;


 int IB_NUM_PKEY_ELEMENTS_IN_BLOCK ;

__attribute__((used)) static int last_accum_pkey_index(osm_pkey_tbl_t * p_pkey_tbl,
     uint16_t * p_block_idx,
     uint8_t * p_pkey_idx)
{
 if (p_pkey_tbl->last_pkey_idx) {
  *p_block_idx = (p_pkey_tbl->last_pkey_idx - 1) / IB_NUM_PKEY_ELEMENTS_IN_BLOCK;
  *p_pkey_idx = (p_pkey_tbl->last_pkey_idx - 1) % IB_NUM_PKEY_ELEMENTS_IN_BLOCK;
  return 1;
 }

 return 0;
}
